
# Load labels
feat_labs = read.table("UCI HAR Dataset/features.txt")
act_labs = read.table("UCI HAR Dataset/activity_labels.txt")

# Load train
data.sources_train = list.files("UCI HAR Dataset/train/", 
                          pattern="*.txt$", full.names=TRUE, ignore.case=TRUE)
sapply(data.sources_train, read.table) -> train
train = cbind(train[[1]], train[[3]], train[[2]])

# Load tests
data.sources_test = list.files("UCI HAR Dataset/test/",
                          pattern="*.txt$", full.names=TRUE, ignore.case=TRUE)
sapply(data.sources_test, read.table) -> test
test = cbind(test[[1]], test[[3]], test[[2]])

# Rename
names(test) = c("subject", "activity", c(as.character(feat_labs$V2)))
names(train) = c("subject", "activity", c(as.character(feat_labs$V2)))

# Merge test & train
df = rbind(train, test)

# Remove all features that are not "mean()" or "str()"
takes = c(1, 2, grep("mean\\(\\)", names(df)), grep("std\\(\\)", names(df)))
df = df[, names(df) %in% names(df)[takes]]

# Factor activities
df$activity = factor(df$activity)
levels(df$activity) = act_labs$V2

# Create dataset of averages
results = c()
for (i in 1:30){
    for (j in 1:6){
        temp_means = colMeans(subset(df[, 3:68], df$subject == i & as.numeric(df$activity) == j))
        temp_row = cbind(i, levels(df$activity)[j], t(temp_means))
        results = rbind(results, temp_row)
    }
}
results = as.data.frame(results)

# Save dataset
write.table(results, row.name=FALSE, "results.txt")