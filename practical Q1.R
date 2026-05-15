#Q1)

df <- data.frame(
  name =c("Raj","Amit","Neha","raj","Amit"),
  marks = c("80","90",NA,"85","90"),
  city = c("Pune","pune","mumbai","PUNE","Mumbai")
)
# 1 Remove extra spaces from name column
df$name <- trimws(df$name)

# 2 Convert all names to lowercase
df$name <- tolower(df$name)

# 3 Convert marks column to numeric and handle missing value
df$marks <- as.numeric(df$marks)

# Replace missing value with mean marks
df$marks[is.na(df$marks)] <- mean(df$marks, na.rm = TRUE)

# 4 Standardize city names (all lowercase)
df$city <- tolower(df$city)

# 5 Filter students with marks greater than 80
filtered_students <- subset(df, marks > 80)

# 6 Create new column grade
df$grade <- ifelse(df$marks >= 85, "A", "B")

# Display final data frame
print(df)

# Display filtered students
print(filtered_students)