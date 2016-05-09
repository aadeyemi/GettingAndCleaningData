library(dplyr)

# setwd('C:/Work/DataScience/Projects/GettingAndCleaningData/project/')

# function to read a given file name and store data in a data.frame object.
readFile <- function(filepath, headers = c("")) {
    # filepath is the file.path that needs to be read
    # headers contains the column header names
    dataFrame <- as.data.frame(read.table(filepath, sep = "" , header = F))
    if (length(headers) > 0) {
        names(dataFrame) <- headers
    }
    # return dataframe
    dataFrame
}

##------------------------------------------------
## Activity headers
##------------------------------------------------

# read header for training data
file <- file.path("UCI_HAR_Dataset","features.txt")
features <- as.data.frame(read.table(file, sep = "" , header = F))

headers <- features[,2]
headers <- gsub(headers, pattern = "\\(\\)", replacement = "")

##------------------------------------------------
## Training data 
##------------------------------------------------

# read subject code for training data
file <- file.path("UCI_HAR_Dataset","train","subject_train.txt")
subject_train <- readFile(file,c("Subject"))
    
# read activity code for training data
file <- file.path("UCI_HAR_Dataset","train","y_train.txt")
y_train <- readFile(file,c("ActivityCode"))

# read training data
file <- file.path("UCI_HAR_Dataset","train","x_train.txt")
x_train <- readFile(file,headers)

# read body x acceleration training data
file <- file.path("UCI_HAR_Dataset","train","Inertial Signals","body_acc_x_train.txt")
body_acc_x_train <- readFile(file, paste(c("Body_Acceleration_X_"),1:128,sep="")) 

# read body y acceleration training data
file <- file.path("UCI_HAR_Dataset","train","Inertial Signals","body_acc_y_train.txt")
body_acc_y_train <- readFile(file, paste(c("Body_Acceleration_Y_"),1:128,sep="")) 

# read body z acceleration training data
file <- file.path("UCI_HAR_Dataset","train","Inertial Signals","body_acc_z_train.txt")
body_acc_z_train <- readFile(file, paste(c("Body_Acceleration_Z_"),1:128,sep="")) 

# read body x gyro training data
file <- file.path("UCI_HAR_Dataset","train","Inertial Signals","body_gyro_x_train.txt")
body_gyro_x_train <- readFile(file, paste(c("Body_Gyro_X_"),1:128,sep="")) 

# read body y gyro training data
file <- file.path("UCI_HAR_Dataset","train","Inertial Signals","body_gyro_y_train.txt")
body_gyro_y_train <- readFile(file, paste(c("Body_Gyro_Y_"),1:128,sep="")) 

# read body z gyro training data
file <- file.path("UCI_HAR_Dataset","train","Inertial Signals","body_gyro_z_train.txt")
body_gyro_z_train <- readFile(file, paste(c("Body_Gyro_Z_"),1:128,sep="")) 

# read total x acceleration training data
file <- file.path("UCI_HAR_Dataset","train","Inertial Signals","total_acc_x_train.txt")
total_acc_x_train <- readFile(file, paste(c("Total_Acceleration_X_"),1:128,sep="")) 

# read total y acceleration training data
file <- file.path("UCI_HAR_Dataset","train","Inertial Signals","total_acc_y_train.txt")
total_acc_y_train <- readFile(file, paste(c("Total_Acceleration_Y_"),1:128,sep="")) 

# read total z acceleration training data
file <- file.path("UCI_HAR_Dataset","train","Inertial Signals","total_acc_z_train.txt")
total_acc_z_train <- readFile(file, paste(c("Total_Acceleration_Z_"),1:128,sep="")) 


##------------------------------------------------
## Merge Training data
##------------------------------------------------

training_data <- cbind(
                        subject_train,
                        y_train,
                        x_train,
                        body_acc_x_train,
                        body_acc_y_train,
                        body_acc_z_train,
                        body_gyro_x_train,
                        body_gyro_y_train,
                        body_gyro_z_train,
                        total_acc_x_train,
                        total_acc_y_train,
                        total_acc_z_train
                )




##------------------------------------------------
## Test data
##------------------------------------------------

# read subject code for test data
file <- file.path("UCI_HAR_Dataset","test","subject_test.txt")
subject_test <- readFile(file, c("Subject")) 

# read activity code for test data
file <- file.path("UCI_HAR_Dataset","test","y_test.txt")
y_test <- readFile(file, c("ActivityCode")) 

# read  data
file <- file.path("UCI_HAR_Dataset","test","X_test.txt")
x_test <- readFile(file, headers) 

# read body x acceleration test data
file <- file.path("UCI_HAR_Dataset","test","Inertial Signals","body_acc_x_test.txt")
body_acc_x_test <- readFile(file, paste(c("Body_Acceleration_X_"),1:128,sep="")) 

# read body y acceleration test data
file <- file.path("UCI_HAR_Dataset","test","Inertial Signals","body_acc_y_test.txt")
body_acc_y_test <- readFile(file, paste(c("Body_Acceleration_Y_"),1:128,sep="")) 

# read body z acceleration test data
file <- file.path("UCI_HAR_Dataset","test","Inertial Signals","body_acc_z_test.txt")
body_acc_z_test <- readFile(file, paste(c("Body_Acceleration_Z_"),1:128,sep="")) 

# read body x gyro test data
file <- file.path("UCI_HAR_Dataset","test","Inertial Signals","body_gyro_x_test.txt")
body_gyro_x_test <- readFile(file, paste(c("Body_Gyro_X_"),1:128,sep="")) 

# read body y gyro test data
file <- file.path("UCI_HAR_Dataset","test","Inertial Signals","body_gyro_y_test.txt")
body_gyro_y_test <- readFile(file, paste(c("Body_Gyro_Y_"),1:128,sep="")) 

# read body z gyro test data
file <- file.path("UCI_HAR_Dataset","test","Inertial Signals","body_gyro_z_test.txt")
body_gyro_z_test <- readFile(file, paste(c("Body_Gyro_Z_"),1:128,sep=""))
    
# read total x acceleration test data
file <- file.path("UCI_HAR_Dataset","test","Inertial Signals","total_acc_x_test.txt")
total_acc_x_test <- readFile(file, paste(c("Total_Acceleration_X_"),1:128,sep="")) 

# read total y acceleration test data
file <- file.path("UCI_HAR_Dataset","test","Inertial Signals","total_acc_y_test.txt")
total_acc_y_test <- readFile(file, paste(c("Total_Acceleration_Y_"),1:128,sep="")) 

# read total z acceleration test data
file <- file.path("UCI_HAR_Dataset","test","Inertial Signals","total_acc_z_test.txt")
total_acc_z_test <- readFile(file, paste(c("Total_Acceleration_Z_"),1:128,sep="")) 


##------------------------------------------------
## Merge Test data
##------------------------------------------------

test_data <- cbind(
                    subject_test,
                    y_test,
                    x_test,
                    body_acc_x_test,
                    body_acc_y_test,
                    body_acc_z_test,
                    body_gyro_x_test,
                    body_gyro_y_test,
                    body_gyro_z_test,
                    total_acc_x_test,
                    total_acc_y_test,
                    total_acc_z_test
                )

##------------------------------------------------
## Merge Training and Test data
##------------------------------------------------

all_data <- rbind(training_data, test_data)


##------------------------------------------------
## Extract only the measurements on the mean and 
## standard deviation for each measurement
##------------------------------------------------
subset_data0 <- all_data[grepl("Subject|ActivityCode|-mean-|-std-", names(all_data))]


##------------------------------------------------
## Add descriptive activity names to data set
##------------------------------------------------

subset_data <- mutate(
                    subset_data0, 
                    Activity = ifelse(subset_data0$Activity == 1,"WALKING",
                                 ifelse(subset_data0$Activity == 2,"WALKING_UPSTAIRS",
                                   ifelse(subset_data0$Activity == 3,"WALKING_DOWNSTAIRS",
                                     ifelse(subset_data0$Activity == 4,"SITTING",
                                       ifelse(subset_data0$Activity == 5,"STANDING",
                                         ifelse(subset_data0$Activity == 6,"LAYING",""
                                         ))))))
                )

# reorder columns to place Activity beside ActivityCode
ncolumns1 <- ncol(subset_data)
ncolumns2 <- ncolumns1-1
subset_data <- subset_data[,c(1,2,ncolumns1,3:ncolumns2)]
subset_data$Activity <- as.factor(subset_data$Activity)

# Uses descriptive activity names to name the activities 
tablenames <- names(subset_data)
tablenames <- gsub(tablenames,pattern="-",   replacement="_")
tablenames <- gsub(tablenames,pattern="^t",  replacement="Time_")
tablenames <- gsub(tablenames,pattern="^f",  replacement="Freq_")
tablenames <- gsub(tablenames,pattern="Acc", replacement="_Acceleration_")
tablenames <- gsub(tablenames,pattern="Gyro",replacement="_Gyro_")
tablenames <- gsub(tablenames,pattern="__",  replacement="_")

names(subset_data) <- tablenames

##------------------------------------------------
## Create tidy data set with the average of each 
## variable for each activity and each subject
##------------------------------------------------
subset_data_means <- aggregate(subset_data[, 4:ncol(subset_data)], 
                               list(subset_data$Subject,
                                    subset_data$Activity), 
                               min)

colnames(subset_data_means)[1] <- "Subject"
colnames(subset_data_means)[2] <- "Activity"

##------------------------------------------------
## Write the tidy dataset to an output file named tidy_activity.txt
##------------------------------------------------
write.table(subset_data_means,file="tidy_activity.txt",row.name=FALSE, sep="|") 