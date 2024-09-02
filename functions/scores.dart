double marks (int math, int english, int science, int history) {
  int total = math+english+science+history;
  double avg = total/4;
  return avg;
}

void main(){
  double avg = marks(67, 88, 93, 75);
  print(avg);
  
}