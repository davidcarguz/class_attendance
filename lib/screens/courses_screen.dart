import 'package:flutter/material.dart';
import '../components/user_header.dart';

class CoursesScreen extends StatelessWidget {
  static const route = 'courses';

  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: UserHeader(),
      ),
    );
  }
}
