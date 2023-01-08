import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'ecc/ui/screens/transaction_screen.dart';

class Ecc_Tracker extends StatelessWidget {
  const Ecc_Tracker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _color = const Color(0xff008037);
    return MaterialApp(
      title: "Bucker",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //brightness: Brightness.dark,
        primaryColor: _color,
      ),
      home: TransactionScreen(),
    );
  }
}
