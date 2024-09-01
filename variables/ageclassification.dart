String myagestatus(int age){
  if (age>1 && age<10){
  return "you are a baby!";
  }
  else if (age>=11 && age<18){
    return "you're a minor";
  }
  else if (age>=18 && age<60){
    return "you're an adult";
  }
  else if (age>=60 && age<111){
    return "you're a senior citizen";
  }
  else{
    return "ur dead bro";
  }
}

void main(){
  String status = myagestatus(900);
  print(status);
}
