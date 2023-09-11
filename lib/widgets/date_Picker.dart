import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/screens/mindReminder_screen.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);
  MindReminderScreen(){}
  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime dateTime = DateTime (2023, 07, 09, 10, 20);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: CupertinoButton(child: Text('${dateTime.month} -${dateTime.day} -${dateTime.year}'),
        onPressed: () {
          showCupertinoModalPopup(context: context,
              builder: (BuildContext context) => SizedBox(height: 200,
              child: CupertinoDatePicker(
                backgroundColor: Colors.white,
                initialDateTime: dateTime,
                onDateTimeChanged: (DateTime newTime) {
                  setState(() => dateTime = newTime);
                },
                use24hFormat: true,
                mode: CupertinoDatePickerMode.date,
              ),
              ),
          );
        },
        ),
      ),
    );
  }
}
