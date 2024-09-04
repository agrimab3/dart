void studentavg(int math, int eng, int science, int history) {
  int totalscore = math + eng + science + history;
  double avgscore = totalscore/4;
  findmygrade(avgscore);
}

void getmygrade(String grade){
  switch (grade){
    case "A":
      print('your grade is A! Good job!');
      break;
    case "B":
      print('your grade is B! So close!');
      break;
    case "C":
      print('your grade is C! Better luck next time!');
      break;
    case "D":
      print('your grade is D! Aim for at least a B next time!');
      break;
    case "F":
      print('ur dumb...you failed :O');
      break;
  }
}

void findmygrade(double avgscore){
  print('your average score is $avgscore');
  // 65.5<=100 && 65.5>=90
  if (avgscore <= 100 && avgscore >= 90){
    //print('your grade is A! Good job!');
    getmygrade("A");
  }
  else if(avgscore<90 && avgscore>=80){
    //print('your grade is B! So close!');
    getmygrade("B");
  }
  else if(avgscore<80 && avgscore>=70){
    //print('your grade is C! Better luck next time!');
    getmygrade("C");
  }
  else if(avgscore<70 && avgscore>=50){
    //print('your grade is D! Aim for at least a B next time!');
    getmygrade("D");
  }
  else{
    //print('ur dumb...you failed :O');
    getmygrade("F");
  }
}

void main() {
  studentavg(93,99,78,95);

}
