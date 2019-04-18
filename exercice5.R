exercice_6<-function(z)
{
  number<-as.numeric()
  month<-as.character()
  
  print("This program realizes the following functions:")
  print("1 - Read 1 number between 1 and 12 provided by the user and write the correspondent month")
  print("2 - If the number is outside this range, inform that there is no month with this number")
  
  print("Lets start? YES --> 1, NO --> 0")
  x<-scan(n=1)
  
  while(x==1)
  {
    print("Enter with a number between 1 and 12:")
    number<-scan(n=1)
    
    month<-c("NOMONTH")
    
    if(number==1)
    {
      month<-c("January")
      cat("The month is:",month,"\n")
    }
    if(number==2)
    {
      month<-c("February")
      cat("The month is:",month,"\n")
    }
    if(number==3)
    {
      month<-c("March")
      cat("The month is:",month,"\n")
    }
    if(number==4)
    {
      month<-c("April")
      cat("The month is:",month,"\n")
    }
    if(number==5)
    {
      month<-c("May")
      cat("The month is:",month,"\n")
    }
    if(number==6)
    {
      month<-c("June")
      cat("The month is:",month,"\n")
    }
    if(number==7)
    {
      month<-c("July")
      cat("The month is:",month,"\n")
    }
    if(number==8)
    {
      month<-c("August")
      cat("The month is:",month,"\n")
    }
    if(number==9)
    {
      month<-c("September")
      cat("The month is:",month,"\n")
    }
    if(number==10)
    {
      month<-c("Octuber")
      cat("The month is:",month,"\n")
    }
    if(number==11)
    {
      month<-c("November")
      cat("The month is:",month,"\n")
    }
    if(number==12)
    {
      month<-c("December")
      cat("The month is:",month,"\n")
    }
    if(month=="NOMONTH")
    {
      print("There is no month with this number!")
    }
    
    print("Enter with another number? YES --> 1 NO --> 0")
    x<-scan(n=1)
  }
  #end of while
  print("Thank You!")
  print("End!")
}
