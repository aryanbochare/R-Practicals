#Q2)

set.seed(100)

sales <- data.frame(
  Product = sample(c("Laptop","Mobile","Tablet"), 50, replace = TRUE),
  City = sample(c("Pune","Mumbai","Delhi"), 50, replace = TRUE),
  Quantity = sample(1:5, 50, replace = TRUE),
  Price = sample(seq(10000, 50000, 5000), 50, replace = TRUE)
)

# Create Revenue column
sales$Revenue <- sales$Quantity * sales$Price


# 1. Show records where Revenue > 100000
sales[sales$Revenue > 100000, ]


# 2. Sort data by Revenue in descending order
sales[order(-sales$Revenue), ]


# 3. Find total revenue by city
aggregate(Revenue ~ City, data = sales, sum)


# 4. Find average price by product
aggregate(Price ~ Product, data = sales, mean)


# 5. Identify product with highest total revenue
product_rev <- aggregate(Revenue ~ Product, data = sales, sum)

product_rev[which.max(product_rev$Revenue), ]
