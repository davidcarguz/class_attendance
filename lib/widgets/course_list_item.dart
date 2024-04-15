import 'package:flutter/material.dart';
import '../screens/course_assistance_screen.dart';

class CourseListItem extends StatelessWidget {
  final String className;
  final String nextClassDate;
  final String classTime;

  const CourseListItem({
    super.key,
    required this.className,
    required this.nextClassDate,
    required this.classTime,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, CourseAssistanceScreen.route);
      },
      child: Card(
        child: ListTile(
            title: Text(
              className,
              style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('proxima clase: $nextClassDate'),
                Text('hora: $classTime')
              ],
            )),
      ),
    );
  }
}
