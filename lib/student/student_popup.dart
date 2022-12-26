import 'package:flutter/material.dart';
import 'package:flutter_application_1/student/student_attendanc_manager.dart';
import 'package:flutter_application_1/student/student_main_exam.dart';
import 'package:flutter_application_1/student/student_practice_exam.dart';
import 'package:google_fonts/google_fonts.dart';
import 'griddashboard.dart';

class PopUp extends StatefulWidget {
  @override
  _PopUpState createState() => new _PopUpState();
}

class _PopUpState extends State<PopUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Aakash Lobo",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Color(0xffa29aac),
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Home",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Color(0xffa29aac),
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Flexible(
            child: GridView.count(
              childAspectRatio: 1.0,
              padding: EdgeInsets.only(left: 16, right: 16),
              crossAxisCount: 2,
              crossAxisSpacing: 18,
              mainAxisSpacing: 18,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xff453658),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        child: Image.asset(
                          "assets/calendar.png",
                          width: 42,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PracticeExam()));
                        },
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        "Practice Exam",
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "March, Wednesday",
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white38,
                                fontSize: 10,
                                fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        "3 Events",
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white70,
                                fontSize: 11,
                                fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xff453658),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        child: Image.asset(
                          "assets/calendar.png",
                          width: 42,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainExam()));
                        },
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        "Main Exam",
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "March, Wednesday",
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white38,
                                fontSize: 10,
                                fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        "3 Events",
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white70,
                                fontSize: 11,
                                fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xff453658),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        child: Image.asset(
                          "assets/calendar.png",
                          width: 42,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AttendanceManager()));
                        },
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        "Attendance Manager",
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "March, Wednesday",
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white38,
                                fontSize: 10,
                                fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        "3 Events",
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white70,
                                fontSize: 11,
                                fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xff453658),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        child: Image.asset(
                          "assets/calendar.png",
                          width: 42,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AttendanceManager()));
                        },
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        "Fee",
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "March, Wednesday",
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white38,
                                fontSize: 10,
                                fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        "3 Events",
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white70,
                                fontSize: 11,
                                fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
