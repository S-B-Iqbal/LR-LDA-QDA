##### LDA with Cancer Data #####

# MASS package for lda()
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


lda.fit2 = lda(t, data = bca, subset = trex)

lda.fit2

# The predict() function returns a list with three elements.
# Of which, element 'class' contains LDA predictions.
lda.pred2 = predict(lda.fit2, test)

names(lda.pred2)

lda.class2 = lda.pred2$class

table(lda.class2, test$diagnosis)

mean(lda.class2 == test$diagnosis)

