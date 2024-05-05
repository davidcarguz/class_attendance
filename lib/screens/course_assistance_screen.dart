import 'package:class_attendance/models/teacher_courses.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:whiteboard/whiteboard.dart';
import '../widgets/user_header.dart';
import '../widgets/basic_information.dart';
import '../widgets/mainButton.dart';
import '../widgets/student_item.dart';
import '../utils/size_config.dart';
import '../utils/constants.dart';

class CourseAssistanceScreen extends StatelessWidget {
  final int courseIndex;

  const CourseAssistanceScreen({super.key, required this.courseIndex});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var formatter = DateFormat('dd/MM/yyyy');
    var formattedDate = formatter.format(DateTime.now());
    return ChangeNotifierProvider<TeacherCourses>(
      create: (BuildContext context) => TeacherCourses(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 1,
                child: const UserHeader(title: 'Asistencia'),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const BasicInformation(
                          label: 'Curso', data: 'Karate Basico 1'),
                      BasicInformation(label: 'Fecha', data: formattedDate),
                      Divider(),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Consumer<TeacherCourses>(
                  builder:
                      (BuildContext context, teacherCourses, Widget? child) {
                    final courseStudents =
                        teacherCourses.courses[courseIndex].students;
                    return ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return StudentRecord(
                          studentName: courseStudents[index].name,
                          assistanceCheck: courseStudents[index].isPresent,
                          changeAssistance: (status) => teacherCourses
                              .setStudentAssistance(courseStudents[index]),
                        );
                      },
                      itemCount: courseStudents.length,
                    );
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Firma',
                        style: basicInformationLabelStyle,
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Card(
                        child: WhiteBoard(
                          backgroundColor: Colors.white12,
                          controller: WhiteBoardController(),
                          strokeWidth: 5,
                          strokeColor: Colors.black,
                          isErasing: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 10.0),
                  child: MainButton(label: 'Completar', onPressed: () {}),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
