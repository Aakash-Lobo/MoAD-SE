import 'package:flutter/material.dart';
import 'package:flutter_application_1/student/pages/ecc/models/transaction.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_application_1/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(TransactionAdapter());
  await Hive.openBox<Transaction>("transactions");

  // open a box
  var box = await Hive.openBox('mybox');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
