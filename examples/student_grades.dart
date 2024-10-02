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