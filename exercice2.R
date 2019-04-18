exercice_2<-function(z)
{
  thenumber<-as.numeric()
  division_by_10<-as.numeric()
  division_by_5<-as.numeric()
  division_by_2<-as.numeric()
  
  print("This program realizes the following functions:")
  print("1 - Receive a number")
  print("2 - Inform if this number is divisible by 10, by 5, by 2 or if is not divisible for neither")
  
  x<-1
  while (x==1)
  {
    print("Enter the number:")
    thenumber<-scan(n=1)
    
    division_by_10<-thenumber%%10
    division_by_5<-thenumber%%5
    division_by_2<-thenumber%%2
    
    if(division_by_10==0)
    {
      print("The number is divisible by 10")
    }
    
    if(division_by_5==0)
    {
      print("The number is divisible by 5")
    }
    
    if(division_by_2==0)
    {
      print("The number is divisible by 2")
    }
    
    if(division_by_10!=0 && division_by_5!=0 && division_by_2!=0)
    {
      print("The number is not divisible by 10, 5 or 2")
    }
    
    print("Test another number? YES --> 1 NO --> 0")
    x<-scan(n=1)
  }
  #end of while
  print("Thank You!")
  print("End!")
}
