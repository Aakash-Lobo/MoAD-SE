import 'package:flutter/material.dart';
import 'package:flutter_application_1/student/pages/exam/practice/practice_quiz_screen.dart';

class PracticeExam extends StatelessWidget {
  const PracticeExam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: QuizScreen());
  }
}
