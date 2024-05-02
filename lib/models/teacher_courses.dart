import 'dart:collection';
import 'package:flutter/widgets.dart';

import 'course.dart';
import 'student.dart';

class TeacherCourses extends ChangeNotifier{
  final List<Course> _courses = [
    Course(
        courseDay: 'Miercoles',
        courseTime: '12:30 PM',
        courseName: 'Karate Basico',
        students: [
          Student(name: 'Carlos Vergara'),
          Student(name: 'Alejandra Espitia'),
          Student(name: 'Marcelo Umaña')
        ]),
    Course(
        courseDay: 'Sabado',
        courseTime: '09:30 PM',
        courseName: 'Futbol Masculino',
        students: [
          Student(name: 'Camila Pelaez'),
          Student(name: 'Pedro Contreras'),
          Student(name: 'Juan Sebastian Guzman'),
          Student(name: 'Fernando Hortua'),
          Student(name: 'Cristian Castro'),
          Student(name: 'Roberto Lizarazo'),
          Student(name: 'Juan David Perez'),
          Student(name: 'Harold Garcia'),
        ]),
    Course(
        courseDay: 'Lunes',
        courseTime: '5:00 PM',
        courseName: 'Ballet Clasico',
        students: [
          Student(name: 'Andres Alvarez'),
          Student(name: 'Paula Giraldo'),
          Student(name: 'Karla Lopera'),
          Student(name: 'Adriana Dominguez'),
          Student(name: 'Lina Bustamante'),
          Student(name: 'Miranda Lopez'),
          Student(name: 'Jennifer Lopez'),
        ]),
  ];

  UnmodifiableListView<Course> get courses {
    return UnmodifiableListView(_courses);
  }

  void setStudentAssistance (Student student) {
    student.changePresenceStatus();
    notifyListeners();
  }

}
