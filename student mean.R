students_register<-function(z)
{
  student<-as.character()
  age<-as.numeric()
  class<-as.character()
  note1<-as.numeric()
  note2<-as.numeric()
  note3<-as.numeric()
  note4<-as.numeric()
  mean_note<-as.numeric()
  result<-as.character()
  
    data_students<-data.frame(student,age,class,note1,note2,note3,note4,mean_note,result)
    data_students$student<-as.character(data_students$student)
    data_students$class<-as.character(data_students$class)
    data_students$result<-as.character(data_students$result)
  
  print("This program do the following functions:")
  print("1 - Recieve the data: student, age, class, note")
  print("2 - Calculate the mean of each stundent and print on console if the student are aproved or reproved")
  print("3 - Create a dataframe and print on console")
  
  print("Inserte a new student? YES --> 1 NO --> 0")
  x<-scan(n=1)
  i<-1
  
  while(x==1){
    
    print("Insert the student name:")
    student<-scan(what = character(),nmax=1)
    print("Insert the age of this student:")
    age<-scan(n=1)
    print("Insert the class of this student:")
    class<-scan(what = character(),nmax=1)
    print("Insert the note1 of this student:")
    note1<-scan(n=1)
    print("Insert the note2 of this student:")
    note2<-scan(n=1)
    print("Insert the note3 of this student:")
    note3<-scan(n=1)
    print("Insert the note4 of this student:")
    note4<-scan(n=1)
    
    notes<-c(note1,note2,note3,note4)
    
      for (j in 1:length(notes)) {
        cat("note of test",j,"-->")
        cat("",notes[j],"\n")
      
      }
    mean_note<-mean(notes)
    cat("Mean of Student",mean_note,"\n")
    
    if(mean_note>=7){
      print("Student Aproved!")
      result<-"APROVED"
    }else{
      print("Student Reproved!")
      result<-"REPROVED"
    }
    data_students[i,]<-c(student,age,class,note1,note2,note3,note4,mean_note,result)
    
    print("Insert a new student? YES --> 1 NO --> 0")
    x<-scan(n=1)
    
    i<-i+1
  }
  #end of while
  print("END!")
  print("Thank You!")
  return(data_students)
}
