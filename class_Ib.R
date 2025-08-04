dir.create("clean_data")
dir.create("script")
dir.create("results")



data <- read.csv(file.choose())



View(data)
str(data)
summary(data)



data$diagnosis <- c("cancer","normal")
class(data$diagnosis)

data$diagnosis <- as.factor(data$diagnosis)
class(data$diagnosis)
data$diagnosis

data$diagnosis <- factor(data$diagnosis,
                         levels = c("normal","cancer"))
data$diagnosis


str(data)



data$gender_fac <- as.factor(data$gender)
str(data)

data$gender_num <- ifelse(data$gender_fac == "Female", 1,0)
class(data$gender_num)

data$gender_num <- as.factor(data$gender_num)
class(data$gender_num)
str(data)



class(data$age)
data$age <- as.numeric(data$age)
class(data$age)



data$smoker_fac <- as.factor(data$smoker)

data$smoker_status <- ifelse(data$smoker_fac == "Yes", 1, 0)
class(data$smoker_status)

data$smoker_status <- as.factor(data$smoker_status)
class(data$smoker_status)



write.csv(data, file = "clean_data/patient_info_clean.csv")


save.image(file = "IqraAnwar_Class_Ib_Assignment.RData")

load("IqraAnwar_Class_Ib_Assignment.RData")



