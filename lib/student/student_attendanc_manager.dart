import 'package:flutter/material.dart';
import 'package:flutter_application_1/student/attendance/pages/home_page.dart';

class AttendanceManager extends StatelessWidget {
  const AttendanceManager({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
