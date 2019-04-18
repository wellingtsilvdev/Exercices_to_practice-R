exercice_3<-function(z)
{
  name<-as.character()
  sex<-as.character()
  age<-as.numeric()
  
  print("This program realizes the following functions:")
  print("1 - Recieve the name, sex and age of one person")
  print("2 - If the person its a woman e have less then 25 years the program print the name of this person and the mensage ACCEPT")
  print("3 - Otherwise, the program print the name of this person and the mensage NOT ACCEPT")
  
  print("Lets start? YES --> 1 NO --> 0")
  x<-scan(n=1)
  
  while (x==1)
  {
    print("Name:")
    name<-scan(what=character(),nmax=1)
    
    print("Enter with the sex, FEMALE for woman, MALE for man:")
    sex<-scan(what=character(),nmax=1)
    
    print("Age:")
    age<-scan(n=1)
    
    if(sex=="FEMALE" && age<25)
    {
      cat("Result:",name,"ACCEPT","\n")
    }
    if(sex=="MALE" || age>=25)
    {
      cat("Result:",name,"NOT ACCEPT","\n")
    }
    
    print("Do you wanna test again? YES --> 1 NO --> 0")
    x<-scan(n=1)
  }
  #end of while
  print("Thank You!")
  print("End!")
}
