if(!("reshape2" %in% installed.packages())) install.packages("reshape2")
require("reshape2")

# Function to read files
fileread <- function(filename) {
  filetext <- readLines(filename)
  filetext <- strsplit(filetext, split=" ")
  # Use lapply and a list function, to preserve length of lines
  filetext <- lapply(filetext, function(line) {
    line <- line[!line==""]
    line 
  })
  # Calculate length of lines.
  ncolumns <- length(filetext[[1]])
  ### print(ncolumns)
  df <- data.frame(matrix(unlist(filetext), ncol=ncolumns, byrow=T))
  names(df)<-paste("v",seq(1:ncolumns),sep="")
  # Add a row id for merging
  df$rowid<-rownames(df)
  df
}

# set relative path
path <- "Human Activity Data"

if(!file.exists(path))
{
  dir.create(path)
}

# data url
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# dowload zip file
if(!file.exists(paste(path,"getdata-projectfiles-UCI HAR Dataset.zip",sep="/")))
{
  download.file(url,paste(path,"getdata-projectfiles-UCI HAR Dataset.zip",sep="/"),method="curl")
}

# unzip
unzip(paste(path,"getdata-projectfiles-UCI HAR Dataset.zip",sep="/"),exdir=path)

# files, which are not the zip file
grep("zip$",dir(path),value=T,invert=T)

# enter project working folder and find the name of unzipped data folder 
# by grepping folders (or files with no extentions)
setwd(path)
path <- grep("[.]",dir(), value=T,invert=T)

########################################################################
# Read and format variable names to be human-readable.
########################################################################
# read variable names
varnames <- fileread(paste(path,"features.txt",sep="/"))

# save only names vector
varnames <- as.character(varnames$v2)

# create a logical vector of mean and std dev variables
vars_Mean_StdDev <- grepl("mean\\(\\)|std\\(\\)",varnames) 

# keep variables names which are mean or std dev
varnames <- grep("mean\\(\\)|std\\(\\)",varnames,value=T)
# testing: save this to compare to final result
# vnames <- varnames

# use regex to pull out measurement part of variable name
Mean.or.StdDev <- regmatches(varnames,regexec("-.*()",varnames))
Mean.or.StdDev <- unlist(Mean.or.StdDev)[!Mean.or.StdDev==""]

# remove "-"
Mean.or.StdDev <- gsub("-","",Mean.or.StdDev)
Mean.or.StdDev <- unlist(Mean.or.StdDev)[!Mean.or.StdDev==""]

# split into measurement and dimension
Mean.or.StdDev <- strsplit(Mean.or.StdDev,"()",fixed=T)

# remove BodyBody
varnames <- gsub("BodyBody","Body",varnames)

# loops through names, adding Mean or Std Dev to the beginning of 
# variable, as well as dimensions
# if time or fre if length of list
for (i in 1:length(Mean.or.StdDev)) {
  n<-regexpr(Mean.or.StdDev[[i]][[1]],varnames[[i]])-1
  sub<-gsub("-","",substring(varnames[[i]],1,n))
  if (varnames[[i]] %in% grep("^t",varnames,value=T)) {
    if (length(Mean.or.StdDev[[i]])>1) {
      varnames[[i]] <- gsub("^t",
        paste(paste(Mean.or.StdDev[[i]][[1]],
        Mean.or.StdDev[[i]][[2]],sep="."),"Time.",sep="."),sub)
    } else if (length(Mean.or.StdDev[[i]])==1) {
      varnames[[i]] <- gsub("^t",
        paste(paste(Mean.or.StdDev[[i]][[1]],
        "Magnitude.of",sep="."),"Time.",sep="."),sub)
      varnames[[i]] <- gsub("Mag$","",
        varnames[[i]])
    }
  } else if (varnames[[i]] %in% grep("^f",varnames,
      value=T)) {
    if (length(Mean.or.StdDev[[i]])>1) {
      varnames[[i]] <- gsub("^f",
        paste(paste(Mean.or.StdDev[[i]][[1]],
        Mean.or.StdDev[[i]][[2]],sep="."),"Freq.",sep="."),sub)
    } else if (length(Mean.or.StdDev[[i]])==1) {
      varnames[[i]] <- gsub("^f",
        paste(paste(Mean.or.StdDev[[i]][[1]],
        "Magnitude.of",sep="."),"Freq.",sep="."),sub)
      varnames[[i]] <- gsub("Mag$","",
        varnames[[i]])
    }
  }
}
# clean up unnecessary variables
rm(i,sub,n,Mean.or.StdDev)

# change abbreviations to be more readable
varnames <- gsub("mean.","Mean.",varnames)
varnames <- gsub("std.","Std.Dev.of.",varnames)
varnames <- gsub("BodyAccJerk","Body.Jerk.Acceleration",varnames)
varnames <- gsub("BodyAcc","Body.Acceleration",varnames)
varnames <- gsub("GravityAcc","Gravity.Acceleration",varnames)
varnames <- gsub("BodyGyroJerk","Body.Jerk.Gyration",varnames)
varnames <- gsub("BodyGyro","Body.Gyration",varnames)

# testing: compare final variable names with originals
# as.data.frame(cbind(vnames,varnames))

########################################################################
# Read in data.
########################################################################
# folders with separate subjects, test & train
datagroup <- c("test","train")

for (group in datagroup) {
  # read in measurements files with function fileread, 
  # x_train.txt & x_test.txt
  filename<-paste(paste("X",group,sep="_"),"txt",sep=".")
  Measurements <- fileread(paste(path,group,filename,sep="/"))
  Measurements <- Measurements[,vars_Mean_StdDev]
  names(Measurements) <- c(varnames,"rowid")
  # read in Activity ID files with function fileread, 
  # y_train.txt & y_test.txt
  filename<-paste(paste("y",group,sep="_"),"txt",sep=".")
  Activity <- fileread(paste(path,group,filename,sep="/"))
  names(Activity) <- c("Activity","rowid")
  # read in Subject ID files with function fileread,
  # subject_train.txt & subject_test.txt
  filename<-paste(paste("subject",group,sep="_"),"txt",sep=".")
  SubjectID <- fileread(paste(path,group,filename,sep="/"))
  names(SubjectID) <- c("SubjectID","rowid")
  IDs <- merge(Activity,SubjectID)
  Measurements <- merge(IDs,Measurements)
  if (!exists("Human.Activity.DF")) {
    Human.Activity.DF <- Measurements
  } else {
    Human.Activity.DF <- rbind(Human.Activity.DF,Measurements)
  }
  rm(Measurements,IDs,SubjectID,Activity)
  #break
  ## at the end either append or 
}

# clean out unused variables
rm(group,datagroup,vars_Mean_StdDev)

# drop row id
Human.Activity.DF <- Human.Activity.DF[,names(Human.Activity.DF)!="rowid"]

# read activity levels from file
ActivityCodes <- fileread(paste(path,"activity_labels.txt",sep="/"))
# associate levels with labors by creating a factor variable of levels
levels(ActivityCodes$v1) <- ActivityCodes$v2
# assign level labels to main data.frame
levels(Human.Activity.DF$Activity)<-levels(ActivityCodes$v1)

# change all numeric colums to numeric
Human.Activity.DF[,-2:-1] <- as.numeric(as.matrix(Human.Activity.DF[,-2:-1]))

# write tidy data set to file
write.table(Human.Activity.DF, "Human_Activity_Dataset.txt", 
  sep="\t",row.names=F)

########################################################################
# Calculate second tidy set with a mean for each individual & activity
########################################################################
# calculate mean value of each activity for each individual
SummaryMeans <- aggregate(Human.Activity.DF[,-2:-1], 
  by=list(Human.Activity.DF$Activity,Human.Activity.DF$SubjectID),
  FUN=mean, na.rm=TRUE)
# rename variables to indicate its an average over the variables
names(SummaryMeans) <- paste("AVG",names(SummaryMeans),sep="_")
names(SummaryMeans)[[1]] <- "Activity"
names(SummaryMeans)[[2]] <- "SubjectID"

# write second summary tidy data set to file
write.table(SummaryMeans, "Summary_Human_Activity_Dataset.txt", 
  sep="\t",row.names=F)
