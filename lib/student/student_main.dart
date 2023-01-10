import 'package:flutter/material.dart';
import 'package:flutter_application_1/logout.dart';
import 'package:flutter_application_1/student/pages/student_about_dev.dart';
import 'package:flutter_application_1/student/pages/student_faq.dart';
import 'package:flutter_application_1/student/pages/student_t&c.dart';
import 'package:flutter_application_1/student/pages/student_train_concession.dart';
// import 'package:flutter_drawer_example/privacy_policy.dart';
// import 'package:flutter_drawer_example/send_feedback.dart';
// import 'package:flutter_drawer_example/settings.dart';
import 'package:flutter_application_1/student/student_home.dart';

import 'package:flutter_application_1/student/pages/student_settings.dart';
import 'package:flutter_application_1/student/pages/student_notification.dart';
// import 'contacts.dart';
import 'student_home.dart';
import 'pages/student_feedback.dart';
// import 'events.dart';
import 'pages/student_leave_apply.dart';
import 'drawer_header.dart';
// import 'notes.dart';
// import 'notifications.dart';

class StudentMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = Nav();
    } else if (currentPage == DrawerSections.leave) {
      container = LeaveApply();
    } else if (currentPage == DrawerSections.train) {
      container = TrainConcession();
    } else if (currentPage == DrawerSections.term) {
      container = TandC();
    } else if (currentPage == DrawerSections.settings) {
      container = FaQ();
    } else if (currentPage == DrawerSections.about) {
      container = AboutDev();
    } else if (currentPage == DrawerSections.settings) {
      container = Settings();
    } else if (currentPage == DrawerSections.notification) {
      container = Notificatio();
    } else if (currentPage == DrawerSections.send_feedback) {
      container = FeedBack();
    } else if (currentPage == DrawerSections.logout) {
      container = logout();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        iconTheme: IconThemeData(color: Colors.red),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat),
            color: Colors.black,
          ),
        ],
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Dashboard", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "Leave Application", Icons.people_alt_outlined,
              currentPage == DrawerSections.leave ? true : false),
          menuItem(3, "Train Concession", Icons.event,
              currentPage == DrawerSections.train ? true : false),
          Divider(),
          menuItem(4, "Terms & Condition", Icons.notes,
              currentPage == DrawerSections.term ? true : false),
          menuItem(5, "FAQs", Icons.settings_outlined,
              currentPage == DrawerSections.faq ? true : false),
          menuItem(6, "About the Devs", Icons.notifications_outlined,
              currentPage == DrawerSections.about ? true : false),
          Divider(),
          menuItem(7, "Settings", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.settings ? true : false),
          menuItem(8, "Notification", Icons.feedback_outlined,
              currentPage == DrawerSections.notification ? true : false),
          menuItem(9, "Send feedback", Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback ? true : false),
          Divider(),
          menuItem(10, "Logout", Icons.feedback_outlined,
              currentPage == DrawerSections.logout ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.leave;
            } else if (id == 3) {
              currentPage = DrawerSections.train;
            } else if (id == 4) {
              currentPage = DrawerSections.term;
            } else if (id == 5) {
              currentPage = DrawerSections.faq;
            } else if (id == 6) {
              currentPage = DrawerSections.about;
            } else if (id == 7) {
              currentPage = DrawerSections.settings;
            } else if (id == 8) {
              currentPage = DrawerSections.notification;
            } else if (id == 9) {
              currentPage = DrawerSections.send_feedback;
            } else if (id == 10) {
              currentPage = DrawerSections.logout;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  leave,
  train,
  term,
  faq,
  about,
  settings,
  notification,
  send_feedback,
  logout,
}
