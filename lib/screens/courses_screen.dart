import 'package:flutter/material.dart';
import '../widgets/user_header.dart';
import '../utils/size_config.dart';
import '../widgets/course_list_item.dart';

class CoursesScreen extends StatelessWidget {
  static const route = 'courses';

  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const UserHeader(
              title: 'Cursos',
            ),
            Container(
              height: SizeConfig.safeBlockVertical * 90,
              child: ListView(
                children: const [
                  CourseListItem(
                    className: 'Karate basico 1',
                    nextClassDate: '21/04/2024',
                    classTime: '03:30 PM',
                  ),
                  CourseListItem(
                    className: 'Karate intermedio 4',
                    nextClassDate: '19/04/2024',
                    classTime: '02:30 PM',
                  ),
                  CourseListItem(
                    className: 'Karate seniors',
                    nextClassDate: '24/04/2024',
                    classTime: '04:00 PM',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
