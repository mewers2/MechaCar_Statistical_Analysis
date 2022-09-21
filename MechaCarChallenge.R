# DELIVERABLE 1

# Load dplyr package
library(dplyr)

# Import and read data file
mecha_mpg <- read.csv(file='MechaCar_mpg.csv' ,check.names=F,stringsAsFactors = F)

# Perform multiple linear regression on MPG based on other variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_mpg)

# Obtain statistical metrics using summary()
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_mpg))


# DELIVERABLE 2

# Import and read data file
coil_data <- read.csv(file='Suspension_Coil.csv' ,check.names=F,stringsAsFactors = F)

# Create total_summary of coil_data
total_summary <- coil_data %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# Create lot_summary of coil_data
lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')


# DELIVERABLE 3
# Import and load the data
population_data <- read.csv(file='Suspension_Coil.csv' ,check.names=F,stringsAsFactors = F)
# Perform t-test on PSI sample comparing it to the population PSI
t.test(population_data[['PSI']], mu=1500)

# Calculate the mean of the lot 1
lot1 <- subset(population_data, Manufacturing_Lot=="Lot1")
lot1_mean <- mean(lot1[['PSI']])
# Calculate T-Test
t.test(lot1[['PSI']], mu=1500)

# Calculate the mean of the lot 2
lot2 <- subset(population_data, Manufacturing_Lot=="Lot2")
lot2_mean <- mean(lot2[['PSI']])
# Calculate T-Test
t.test(lot2[['PSI']], mu=1500)

# Calculate the mean of the lot 3
lot3 <- subset(population_data, Manufacturing_Lot=="Lot3")
lot3_mean <- mean(lot3[['PSI']])
# Calculate T-Test
t.test(lot3[['PSI']], mu=1500)