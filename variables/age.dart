String eligibility(int age){
  if (age>=18){
    return "eligibile";
  }
  else{
    return "not eligible";
  }
}

void main(){
  String age = eligibility(19);
  print("you are $age");
}