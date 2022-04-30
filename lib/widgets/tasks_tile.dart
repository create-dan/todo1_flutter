// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String? taskTitle;

  final Function(bool?) checkboxCallback;
  final Function() longPressCallback;

  TaskTile(
      {Key? key,
      required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.longPressCallback})
      : super(key: key);

  // void checkboxCallback(bool? checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState!;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onLongPress: longPressCallback,
        title: Text(
          taskTitle!,
          style: TextStyle(
            decoration: isChecked! ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          // onChanged: toggleCheckboxState,
          onChanged: checkboxCallback,
        ),
      ),
    );
  }
}
