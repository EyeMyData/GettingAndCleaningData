## Grab lookup tables called feature and activities
features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)
activities <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)


## Grab test data sets along with subject lookup table
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = features[,2])
Y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = c("ActivityNum"))
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)

## Combine test data sets into one data set
XYTest <- cbind(X_test, Y_test, subject_test)


## Grab train data sets along with subject lookup table
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = features[,2])
Y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = c("ActivityNum"))
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)

## Combine test data sets into one data set
XYTrain <- cbind(X_train, Y_train, subject_train)

## Append test and train data sets into one large data set
Combined <- rbind(XYTest , XYTrain)

## Assign "Subject" to appropriate column name
colnames(Combined)[563] <- "Subject"

## To get friendly activity names, merge activities with Combined data set
MergedCombined <- merge(Combined, activities, by.x = "ActivityNum", by.y = "V1")

## Assign "ActivityName" to appropriate column name
colnames(MergedCombined)[564] <- "ActivityName"

## Melt the data in preparation for cast
Melted <- melt(MergedCombined, id.vars=c("ActivityName","Subject"))

## Cast the data by Subject and Activity, calculating the mean
Casted <- cast(Melted, Subject + ActivityName ~ variable, mean)

## Identify columns that are mean or std
validcolumns <- grep("*.mean|*.std|*Mean",names(Casted)) # for example

validcolumns2 <- c(1, 2, validcolumns)

newCasted <- Casted[c(validcolumns2)]

write.table(newCasted, file="./tidydata.txt", sep="\t", row.names=FALSE)
