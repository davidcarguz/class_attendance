import 'dart:collection';
import 'package:flutter/material.dart';

import 'student.dart';

class CourseStudents extends ChangeNotifier{

  final List<Student> _students = [
    Student(name: 'David Cardenas Guzman'),
    Student(name: 'Carolina Pedroza'),
    Student(name: 'Tomas Velazquez'),
  ];

  UnmodifiableListView<Student> get students {
    return UnmodifiableListView(_students);
  }

  void setStudentAssistance (Student student) {
    student.changePresenceStatus();
    notifyListeners();
  }

}