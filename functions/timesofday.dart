void currentTime(String time) {
  if (time == 'morning') {
    print("Time to have breakfast!");
  } else if (time == 'afternoon') {
    print("Time to work on your project!");
  } else if (time == 'evening') {
    print("Time to relax and unwind!");
  } else {
    print("Time for bed!");
  }
}

void main() {
  currentTime("evening");
  String time = "evening";
  print("It is $time");
}