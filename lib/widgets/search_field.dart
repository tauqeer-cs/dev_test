import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Container(


        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(color: Colors.grey),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search room or member',
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              height: 24.0,
              width: 1.0,
              color: Colors.grey,
              margin: EdgeInsets.symmetric(horizontal: 8.0),
            ),
            Icon(Icons.search),
          ],
        ),
      ),
    );
  }
}


