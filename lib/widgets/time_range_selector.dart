import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../theme/styles.dart';

class TimeRangeSelectorWidget extends StatefulWidget {
  const TimeRangeSelectorWidget({super.key});

  @override
  _TimeRangeSelectorWidgetState createState() =>
      _TimeRangeSelectorWidgetState();
}

class _TimeRangeSelectorWidgetState extends State<TimeRangeSelectorWidget> {
  TimeOfDay startTime = const TimeOfDay(hour: 9, minute: 0);
  TimeOfDay endTime = const TimeOfDay(hour: 10, minute: 0);

  Future<void> _selectStartTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: startTime,
    );
    if (picked != null && picked != startTime) {
      setState(() {
        startTime = picked;
      });
    }
  }

  Future<void> _selectEndTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: endTime,
    );
    if (picked != null && picked != endTime) {
      setState(() {
        endTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String formattedStartTime = DateFormat.jm().format(DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
      startTime.hour,
      startTime.minute,
    ));

    String formattedEndTime = DateFormat.jm().format(DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
      endTime.hour,
      endTime.minute,
    ));

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Styles.kBackGroundGrayColorDark),
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          InkWell(
            onTap: () => _selectStartTime(context),
            child: Row(
              children: [
                const SizedBox(width: 4.0),
                Text(
                  formattedStartTime,
                  //style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
          //  SizedBox(width: 16.0),
          const Icon(
            Icons.arrow_right,
            size: 16,
          ),
          // SizedBox(width: 16.0),
          InkWell(
            onTap: () => _selectEndTime(context),
            child: Row(
              children: [
                Text(
                  formattedEndTime,
                  // style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(),
          ),
          const Icon(
            Icons.access_time,
            size: 16,
          ),
        ],
      ),
    );
  }
}
