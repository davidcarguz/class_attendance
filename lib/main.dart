import 'package:class_attendance/screens/courses_screen.dart';
import 'package:class_attendance/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(primaryColor)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      routes:{
        CoursesScreen.route : (context) => const CoursesScreen(),
       },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: LoginPage(),
    );
  }
}
