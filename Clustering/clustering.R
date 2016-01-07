## K-means Clustering 

data <- read.csv("~/Data Science Mini XTR/Clustering/data.csv", header=TRUE, row.names=1)
km <- kmeans(data, 3, 15)

# print components of km
print(km)

# plot clusters
plot(data, col = km$cluster)
# plot centers
points(km$centers, col = 1:2, pch = 8)
