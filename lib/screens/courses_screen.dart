import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/user_header.dart';
import '../utils/size_config.dart';
import '../widgets/course_list_item.dart';
import '../models/teacher_courses.dart';

class CoursesScreen extends StatelessWidget {
  static const route = 'courses';

  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ChangeNotifierProvider<TeacherCourses>(
      create: (BuildContext context) => TeacherCourses(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const UserHeader(
                title: 'Cursos',
              ),
              Container(
                height: SizeConfig.safeBlockVertical * 90,
                child: Consumer<TeacherCourses>(
                  builder:
                      (BuildContext context, teacherCourses, Widget? child) {
                    return ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        final courses = teacherCourses.courses;
                        return CourseListItem(
                          nextClassDate: courses[index].courseDay,
                          className: courses[index].courseName,
                          classTime: courses[index].courseTime,
                          courseIndex: index,
                        );
                      },
                      itemCount: teacherCourses.courses.length,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
