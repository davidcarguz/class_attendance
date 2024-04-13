import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  static const route = 'courses';

  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Image.asset('images/user.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
