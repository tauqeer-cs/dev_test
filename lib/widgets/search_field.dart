import 'package:dev_text/theme/styles.dart';
import 'package:flutter/material.dart';

class CustomSearchWidget extends StatelessWidget {
  const CustomSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Styles.kBackGroundGrayColorDark),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search room or member',
                  border: InputBorder.none,

                ),
                style: TextStyle(
                    fontSize: 12
                ),
              ),
            ),

            Container(
              height: 20.0, // Adjust the height here
              width: 1.0,
              color: Styles.kBackGroundGrayColorDark,
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
            ),
            const Icon(Icons.search),
          ],
        ),
      ),
    );
  }
}

