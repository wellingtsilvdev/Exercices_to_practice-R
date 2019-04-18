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
        primeiro_numero<-scan(n=1)
        print("Enter the second number:")
        segundo_numero<-scan(n=1)
        adicao<-sum(primeiro_numero,segundo_numero)
        cat("The sum of both are:",adicao,"\n")
        
        if(adicao>20)
        {
          print("The sum of both are bigger then 20")
          adicao<-adicao+8
          cat("The sum of both +8 are:",adicao,"\n")
        }
        if(adicao<=20)
        {
          print("The sum of both are less or equal then 20")
          adicao<-adicao-5
          cat("The sum of both -5 are:",adicao,"\n")
        }
        print("Enter another numbers? YES --> 1, NO --> 0")
        x<-scan(n=1)
      }
      #end of while
      print("Thank you!")
      print("The end!")

}
