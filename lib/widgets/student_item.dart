import 'package:flutter/material.dart';

bool? isChecked = false;

class StudentRecord extends StatefulWidget {

  final String studentName;

  const StudentRecord({super.key, required this.studentName});

  @override
  State<StudentRecord> createState() => _StudentRecordState();
}

class _StudentRecordState extends State<StudentRecord> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.studentName),
      trailing: Checkbox(value: isChecked, onChanged: (newState) {
        setState(() {
          isChecked = newState;
        });
      }),
    );
  }
}
