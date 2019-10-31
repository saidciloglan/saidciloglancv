import 'package:flutter/material.dart';
import 'package:saidciloglancv_flutter/said_ciloglan_cv.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Said Çiloğlan',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SaidCiloglanCV(),
    );
  }
}
