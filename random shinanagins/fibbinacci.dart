void main () {
  int val1 = 1;
  int val2 = 1;
  int val3;
  print('1');
  print ('1');
  for (int i = 1; i <=100; i++) {
    val3 = val1 + val2;
    print ('$val3');
    
    val1 = val2;
    val2 = val3;
    
  }
}