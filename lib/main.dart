import 'package:flutter/material.dart';
import 'package:medicalclinic/persentaion/screens/homepage.dart';
import 'package:medicalclinic/persentaion/screens/layoutscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LayoutScreen(),
    );
  }
}


