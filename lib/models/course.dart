import 'package:flutter/material.dart';

import 'student.dart';

class Course extends ChangeNotifier{

  final String courseName;
  final String courseDay;
  final String courseTime;
  final List<Student> students;

  Course({required this.courseName, required this.courseDay, required this.courseTime, required this.students});

}