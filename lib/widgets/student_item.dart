import 'package:flutter/material.dart';

bool? isChecked = false;

class StudentRecord extends StatelessWidget {
  final bool assistanceCheck;
  final String studentName;
  final Function(bool?) changeAssistance;

  const StudentRecord(
      {super.key,
      required this.studentName,
      required this.assistanceCheck,
      required this.changeAssistance});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(studentName),
      trailing: Checkbox(
        value: assistanceCheck,
        onChanged: changeAssistance,
      ),
    );
  }
}
