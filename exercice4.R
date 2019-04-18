exercice_4<-function(z)
{
  first_number<-as.numeric()
  second_number<-as.numeric()
  third_number<-as.numeric()
  
  print("This program realizes the following functions:")
  print("1 - Recieve 3 numbers")
  print("2 - print all of them in descending order")
  print("Lets start? YES --> 1 NO --> 0")
  x<-scan(n=1)
  
  while (x==1)
  {
    print("Enter with the first number:")
    first_number<-scan(n=1)
    
    print("Enter with the second number:")
    second_number<-scan(n=1)
    
    print("Enter with the third number:")
    third_number<-scan(n=1)
    
    numbers<-c(first_number,second_number,third_number)
    numbers<-sort(numbers,decreasing = TRUE)
    cat("The numbers in decreasing order is:",numbers,"\n")
    
    print("Enter with another numbers? YES --> 1 NO --> 0")
    x<-scan(n=1)
    
  }
  #end of while
  print("Thank You!")
  print("End!")
}

