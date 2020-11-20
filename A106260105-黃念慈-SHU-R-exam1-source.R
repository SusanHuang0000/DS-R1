# 2020/11/20(五), 109學年第一學期 資料科學應用 R小考(1)
#
# 學號:A106260105        姓名:黃念慈 
#
# 本檔案為各題之程式碼檔，無執行結果


# ex1(a)
  calculusA<- read.table("data/Calculus-score-A.csv", sep = ",", skip = 3)
  names(calculusA) <- c("No.", "id", "name", "sex", "quiz1", "quiz2", "quiz3", "quiz4", "TA", "Mid", "Final", "Att")
  head(calculusA, 5)
  tail(calculusA, 5)
  library(readxl)
  calculusB<- read_excel("data/Calculus-score-B.xls", skip = 2 )
  names(calculusB) <- c("No.", "id", "name", "sex", "quiz1", "quiz2", "quiz3", "quiz4", "TA", "Mid", "Final", "Att")
  head(calculusB, 5)
  tail(calculusB, 5)
  
# ex1(b) 
  calculusA$class <- "A"
  calculusB$class <- "B"
  score <- rbind(calculusA, calculusB)
  score[38:43,]
  
# ex1(c)  
  score.all <- score$quiz1*0.07+score$quiz2*0.07+score$quiz3*0.08+score$quiz4*0.08+score$TA*0.15+score$Mid*0.25+score$Final*0.30+score$Att
  
# ex1(d) 
  score[60 > score.all >= 55]