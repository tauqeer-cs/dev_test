import 'package:flutter/material.dart';

import '../../theme/styles.dart';

class CardHours extends StatelessWidget {
  const CardHours({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Styles.kBackGroundGrayColor,
        borderRadius: BorderRadius.circular(8), // Adjust the radius as needed
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(Icons.credit_card,color: Colors.blueAccent,),
            SizedBox(
              width: 4,
            ),
            Text('2 hr'),
          ],
        ),
      ),
    );
  }
}
