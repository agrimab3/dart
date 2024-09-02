int myage(int age, int futureyear, int currentyear) {
  int diffyear = futureyear - currentyear;
  int futureage = diffyear + age;
  
  return futureage;
}

void main(){
  int finalage = myage(11,2075, 2024);
  print('my age will be $finalage in 2075');
}
