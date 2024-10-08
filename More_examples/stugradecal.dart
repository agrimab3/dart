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
    List<Map<String,dynamic>> stuList = [];
    //print(studentLengthInt == null);
    if (studentLengthInt != null) {
        for(int i=0; i<studentLengthInt ; i++) {
            print('What is your name?');
            String? name = stdin.readLineSync();
            print(name);
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

            // print(finalGrade);

            Map<String,dynamic> studentDetails = {};
            studentDetails["name"] = name;
            studentDetails["score"] = <int>[];  // Declare as List<int>
            studentDetails["score"].addAll([mathInt, scienceInt, englishInt, historyInt]);
            // print(studentDetails);
            stuList.add(studentDetails);
        }
        print(stuList);
    } else {
        print('Enter valid count');

    }
}


import 'dart:io';

String calculateTotal(List<Map<String,dynamic>> stuList) {
    // int scores = (mathInt ?? 0) +
    //              (scienceInt ?? 0) +
    //              (englishInt ?? 0) +
    //              (historyInt ?? 0);

    double avg = 70 / 4;
    String grade = calculateGrade(avg);
    return grade;
}
//Call it with a function name
//Pass the arguments if needed
//Get the arguments passed
//Do Manipulations
//Return it
//Catch it
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
    List<Map<String,dynamic>> stuList = [];
    // List<String> name = ['bob','Aarush','Agrima'];
    // List<int> name = [5,2,7];
    // List<Map<String,String>> names = [{
    //     'name1' : 'bob',
    //     'name2' : 'Aarush',
        
    // }];
    //print(studentLengthInt == null);
    if (studentLengthInt != null) {
        for(int i=0; i<studentLengthInt ; i++) {
            print('What is your name?');
            String? name = stdin.readLineSync();
            print(name);
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

            // String finalGrade =
            //     calculateTotal(mathInt, scienceInt, englishInt, historyInt);

            // print(finalGrade);

            Map<String,dynamic> studentDetails = {};
            studentDetails["name"] = name;
            studentDetails["score"] = <int>[];  // Declare as List<int>
            // studentDetails["score"].addAll([mathInt, scienceInt, englishInt, historyInt]);
            // // print(studentDetails);
            (studentDetails["score"] as List<int>).addAll(
                [mathInt ?? 0, scienceInt ?? 0, englishInt ?? 0, historyInt ?? 0]);
            stuList.add(studentDetails);
        }
        print(stuList);
        // calculateTotal(stuList);
        // return totalcal;
    } else {
        print('Enter valid count');

    }
}