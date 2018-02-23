##### Quadratic Discriminent Analysis #####

# We require package MASS for qda() function

require(MASS)

## Wisconsin Breast Cancer data
bca = read.csv("wisc_bc_data.csv")
bca= bca[-1]
str(bca)
colnames(bca)

# Identifying the response for which probability will be calculated
contrasts(bca$diagnosis)
dim(bca)

# Creating Training and Testing datasets
train = bca[1:469,]
# Creating a vector subset
trex = 1:469
test = bca[470:569,]
diagnosis.train = train$diagnosis
diagnosis.test = test$diagnosis

# Using as.formula() to implement Y ~ x1 + x2 .... formula
varY = "diagnosis"
# removing diagnosis column name
varX = names(train[-1])
t = as.formula(paste(varY, paste(varX, collapse = "+"), sep = "~"))

qda.fit = qda(t, data = bca, subset = trex)

qda.pred = predict(qda.fit, test)

names(qda.pred)

qda.class = qda.pred$class

table(qda.class, test$diagnosis)
