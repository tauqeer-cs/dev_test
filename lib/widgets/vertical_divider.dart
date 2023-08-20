
import 'package:flutter/material.dart';

import '../theme/styles.dart';

class VerticalDividerWidget extends StatelessWidget {
  const VerticalDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20, // Adjust the height as needed
      width: 1, // Width of the vertical divider
      color: Styles.kBackGroundGrayColorDark, // Color of the divider
    );
  }
}
