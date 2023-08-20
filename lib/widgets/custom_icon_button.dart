import 'package:flutter/material.dart';

import '../theme/styles.dart';

class CustomIconButton extends StatelessWidget {
  final IconData? iconData;
  final String text;
  final VoidCallback onPressed;

  CustomIconButton({super.key,
     this.iconData,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white, // Text and icon color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0), // Rounded corners
          side:  BorderSide(color:Styles.kBackGroundGrayColorDark ), // Grey border
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if(iconData != null) ... [
            Icon(iconData),
            SizedBox(width: 8.0),
          ],
          Text(text),
        ],
      ),
    );
  }
}