exercice_1<-function(z)
{
  first_number<-as.numeric()
  second_number<-as.numeric()
  addition<-as.numeric()
  
    print("This program realizes the following functions:")
    print("1 - Receive 2 numbers and realizes the sum from both")
    print("2 - In case of value of addition is greater than 20, the addition will be presented adding more 8")
    print("3 - In case of value of addition is less of equal to 20, the addition will be presented subtracting 5:")
  
      x<-1
      while (x==1)
      {
        print("Enter the first number:")
        first_number<-scan(n=1)
        print("Enter the second number:")
        second_number<-scan(n=1)
        addition<-sum(first_number,second_number)
        cat("The sum of both are:",addition,"\n")
        
        if(addition>20)
        {
          print("The sum of both are bigger then 20")
          addition<-addition+8
          cat("The sum of both +8 are:",addition,"\n")
        }
        if(addition<=20)
        {
          print("The sum of both are less or equal then 20")
          addition<-addition-5
          cat("The sum of both -5 are:",addition,"\n")
        }
        print("Enter another numbers? YES --> 1, NO --> 0")
        x<-scan(n=1)
      }
      #end of while
      print("Thank you!")
      print("The end!")

}
