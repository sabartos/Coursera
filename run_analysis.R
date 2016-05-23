# reshape2
library (reshape2)

# first we pull in the testing group data
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "Subject" )
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "Class")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")

# secondly we pull in the training group data
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "Subject" )
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "Class")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")

# pull in all of the variable names and add them to the data set
features <- read.table ( "UCI HAR Dataset/features.txt" , col.names = c ( "Column", "Description"), stringsAsFactors=FALSE )[,2]
colnames(x_test) <- features
colnames(x_train) <- features

# combine the data with the appropriate class labels and acitivity names
test_final <- cbind (subject_test, y_test, x_test)
train_final <- cbind (subject_train, y_train, x_train)

# combine all of the data (train and test data) into a single data set
data_final <- rbind (train_final, test_final)

# add the class numbers and labels 
labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c ("Class", "Label") )
data_final$Activity <- labels$Label[match(data$Class,labels$Class)]


# extract just those columns with both the mean and std values
subset_mean <- grep ( "mean", colnames(data), ignore.case = TRUE )
subset_stdev <- grep ( "std", colnames(data), ignore.case = TRUE)
data_subset <- data[ c ( 1:3, subset_mean, subset_stdev ) ]


melted_data_subset <- melt(data_subset, id = c ("Subject", "Class", "Activity") , measure.vars = c(4:89), variable.name = "Features", value.name = "Signals" )

# dcast by Subject & Activity, drop "Class", derive mean for Signals & adjust variable names appropriately
data_subset_tidy <- dcast (melted_data_subset Subject + Activity ~ Features, mean, value.var = "Signals")
columns_tidy <- c ("Subject", "Activity", paste ( "Mean of", colnames(data_subset_tidy[,3:88]) ) )
colnames(data_subset_tidy) <- column_tidy
head(data_subset_tidy)
write.table(data_subset_tidy, file = "data_subset_tidy.txt")
write.csv(data_subset_tidy, file = "data_subset_tidy.csv")
