import 'dart:io';

void main() {
    print('How many students do you want to enter?');
    String? studentlength = stdin.readLineSync();
    dynamic studentlengthint = int.tryParse(studentlength!);
    print(studentlengthint == null);
    if (studentlengthint != null) {
        print ('What is your Math score?');
        String? math = stdin.readLineSync();
        int? mathint = int.tryParse(math!);
        print ('What is your Science score?');
        String? science = stdin.readLineSync();
        int? scienceint = int.tryParse(science!);
        print ('What is your English score?');
        String? english = stdin.readLineSync();
        int? englishint = int.tryParse(english!);
        print ('What is your History score?');
        String? history = stdin.readLineSync();
        int? historyint = int.tryParse(history!);


        int scores = (mathint ?? 0) + (scienceint ?? 0) + (englishint ?? 0) + (historyint ?? 0);

        double avg = scores / 4;
        print('Average: $avg');


        if (avg > 85 && avg <= 100) {
            print('Grade: A');
        } else if (avg > 60 && avg <= 85) {
            print('Grade: B');
        } else if (avg > 50 && avg <= 60) {
            print('Grade: C');
        } else if (avg == 50) {
            print('Grade: D');
        } else {
            print('Grade: F');
        }
    }
    else {
        print('Enter valid count');
    }
}



import 'dart:io';

String calculateTotal(dynamic mathInt, dynamic scienceInt, dynamic englishInt,
    dynamic historyInt) {
  int scores = (mathInt ?? 0) +
      (scienceInt ?? 0) +
      (englishInt ?? 0) +
      (historyInt ?? 0);

  double avg = scores / 4;
  String grade = calculateGrade(avg);
  return grade;
}

String calculateGrade(double avg) {
  if (avg > 85 && avg <= 100) {
    return ('Grade: A');
  } else if (avg > 60 && avg <= 85) {
    return ('Grade: B');
  } else if (avg > 50 && avg <= 60) {
    return ('Grade: C');
  } else if (avg == 50) {
    return ('Grade: D');
  } else {
    return ('Grade: F');
  }
}

void main() {
  print('How many students do you want to enter?');
  String? studentLength = stdin.readLineSync();
  dynamic studentLengthInt = int.tryParse(studentLength!);
  print(studentLengthInt == null);
  if (studentLengthInt != null) {
    print('What is your Math score?');
    String? math = stdin.readLineSync();
    int? mathInt = int.tryParse(math!);
    print('What is your Science score?');
    String? science = stdin.readLineSync();
    int? scienceInt = int.tryParse(science!);
    print('What is your English score?');
    String? english = stdin.readLineSync();
    int? englishInt = int.tryParse(english!);
    print('What is your History score?');
    String? history = stdin.readLineSync();
    int? historyInt = int.tryParse(history!);

    String finalGrade =
        calculateTotal(mathInt, scienceInt, englishInt, historyInt);

    print(finalGrade);
  } else {
    print('Enter valid count');
  }
}