# 2020/12/11(五), 109學年第一學期 資料科學應用 R期中考
#
# 學號:A106260105 姓名:黃念慈 
#
# 本檔案為各題之程式碼檔，無執行結果


# ex 1
study <- function(X, Y, B){
  colname <- c("Eng.hr", "Comp.hr", "Tuition", "U", "Fit")
  U <- (X^(1/2)*(Y^(1/2)))
  UFunction <- matrix(0, 1, 5, dimnames = list(1, colname))
  
  if(UFunction$Tuition < 12000){
    UFunction$Tuition[UFunction$Tuition] <- "*" 
  }
  UFunction$Eng.hr[UFunction$Eng.hr] <- X
  UFunction$Comp.hr[UFunction$Comp.hr] <- Y
  UFunction$Tuition[UFunction$Tuition] <- B
  list(UFunction)
}

# ex 2(a)
score <- read.csv("data/Score-109.csv", header = T, skip=1)
names(score) <- c("ID", "Calculus", "English")
head(score, 5)
tail(score, 5)
# ex 2(b)
score[is.na(score)] <- 0
subset(score, (score$Calculus < 60) & (score$English < 60))
# ex 2(c)
my.cor <- function(x, y) {
  x.bar <- mean(x)
  y.bar <- mean(y)
  a <- sum((x-x.bar)*(y-y.bar))
  b <- sqrt(sum((x-x.bar)^2))
  c <- sqrt(sum((y-y.bar)^2))
  r.cor <- a/(b*c)
  list(r_value = r.cor)
}
# ex 2(d)
my.cor(score$Calculus, score$English)
cor(score$Calculus, score$English)

# ex 3(a)
my.dnorm <- function(x, μ, σ) {
  μ <- mean(x)
  A <-(sqrt(2*pi))*σ
  B <-(x - μ)^2
  C <- (2*σ)^2
  e <- exp(1)
  f <- (1/A)*((e)^(-(B/C)))
  f
} 
# ex 3(b)
list(x=(-3:3), dnorm(-3:3) ,my.dnorm(-3:3, 0, 1))
