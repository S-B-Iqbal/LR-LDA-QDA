##### Logistic regression with Cancer Data #####

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

# Applying glm() function
glm.train = glm(t, data = bca, family = binomial(link = 'logit'),
                subset = trex)

# Using predict() function to predict the probability, given values of the predictor
# type = "response" is used to obtain probability as an output
glm.prob1 = predict(glm.train, test, type = "response")

contrasts(bca$diagnosis)

glm.pred1 = rep("B", 100)
glm.pred1[glm.prob1>= 0.5]= "M"

# Confusion matrix
table(glm.pred1, diagnosis.test)
mean(glm.pred1==diagnosis.test)

