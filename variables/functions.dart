void something (String firstname, String lastname) {
  //void- not returns something
  print('my first name is $firstname my last name is $lastname');
}


String favcolors (int age, String favcolor, double grade) {
 return favcolor;
}

int myage (int age) {
  return age;
  
}

double mygrade (double grade){
  return grade;
  
}
void main() {
  something('Aarush','Bhutani');
  String myfavcolor = favcolors(15, "pink and red", 99.2);
  print(myfavcolor);
  int age = myage(15);
  print(age);
  double grade = mygrade(99.2);
    print(grade);
  
}

