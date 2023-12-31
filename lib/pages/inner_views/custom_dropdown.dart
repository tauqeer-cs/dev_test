import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../theme/styles.dart';

class CustomDropdown extends StatefulWidget {
  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  List<String> options = [
    'Meeting Room',
    'Desk Pass',
    'More',
  ];
  String selectedOption = 'Select an option';

  void _showOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: ListView.builder(
            itemCount: options.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  setState(() {
                    selectedOption = options[index];
                  });
                  Navigator.pop(context);
                },
                title: Text(options[index]),
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            _showOptions(context);
          },
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(),
            child: SizedBox(
              width: 164.w,
              child: Row(
                children: [
                  const Icon(Icons.calendar_today),
                  const SizedBox(width: 10),
                  Text(selectedOption),
                  const Spacer(),
                  const Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomDropdownWithBorder extends StatefulWidget {
  const CustomDropdownWithBorder({Key? key}) : super(key: key);

  @override
  State<CustomDropdownWithBorder> createState() =>
      _CustomDropdownWithBorderState();
}

class _CustomDropdownWithBorderState extends State<CustomDropdownWithBorder> {
  List<String> options = [
    'North Strathfield',
    'Location 2',
  ];
  String selectedOption = 'North Strathfield';

  void _showOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: ListView.builder(
            itemCount: options.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  setState(() {
                    selectedOption = options[index];
                  });
                  Navigator.pop(context);
                },
                title: Text(options[index]),
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            _showOptions(context);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Styles.kBackGroundGrayColorDark,
                // Replace with your desired border color
                width: 1, // Adjust the border width as needed
              ),
            ),
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Styles.kBackGroundGrayColorDark,
                  ),
                  const SizedBox(width: 10),
                  Text(selectedOption),
                  const Spacer(),
                   Icon(
                    Icons.keyboard_arrow_down,
                    color: Styles.kBackGroundGrayColorDark,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DateSelectorWidget extends StatefulWidget {
  @override
  _DateSelectorWidgetState createState() => _DateSelectorWidgetState();
}

class _DateSelectorWidgetState extends State<DateSelectorWidget> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);

    return InkWell(
      onTap: () => _selectDate(context),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Styles.kBackGroundGrayColorDark),
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              formattedDate,
           //   style: TextStyle(fontSize: 16.0),
            ),
            Icon(Icons.calendar_today,size: 16,),
          ],
        ),
      ),
    );
  }
}

