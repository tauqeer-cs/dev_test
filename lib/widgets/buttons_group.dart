import 'package:dev_text/theme/styles.dart';
import 'package:flutter/material.dart';

class ButtonGroupExample extends StatefulWidget {
  const ButtonGroupExample({super.key});

  @override
  _ButtonGroupExampleState createState() => _ButtonGroupExampleState();
}

class _ButtonGroupExampleState extends State<ButtonGroupExample> {
  int _selectedButtonIndex = -1;

  final List<ButtonData> _buttons = [
    ButtonData('Meeting Room', Icons.calendar_month_sharp),
    ButtonData('Desk Pass', Icons.chair_alt),
    ButtonData('More', null),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: _buttons
          .asMap()
          .map((index, buttonData) => MapEntry(
        index,
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: SelectableButton(
            text: buttonData.text,
            icon: buttonData.icon,
            isSelected: index == _selectedButtonIndex,
            onPressed: () {
              setState(() {
                _selectedButtonIndex = index;
              });
            },
          ),
        ),
      ))
          .values
          .toList(),
    );
  }
}

class ButtonData {
  final String text;
  final IconData? icon;

  ButtonData(this.text, this.icon);
}

class SelectableButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final bool isSelected;
  final VoidCallback onPressed;

  const SelectableButton({super.key,
    required this.text,
    this.icon,
    this.isSelected = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    Color textColor = isSelected ? Styles.kBlueColor : Styles.kBackGroundGrayColorDark;
    Color iconColor = isSelected ? Styles.kBlueColor : Styles.kBackGroundGrayColorDark;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0,),
          side: BorderSide(color: textColor),
        ),

      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ... [
              Icon(
                icon,
                color: iconColor,
              ),
              const SizedBox(width: 8.0),
            ],

            Text(
              text,
              style: TextStyle(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
