
import 'package:flutter/material.dart';
import 'package:flutter_advanced_segment/flutter_advanced_segment.dart';

import '../theme/styles.dart';

class SegmentedView extends StatefulWidget {
  @override
  _SegmentedViewState createState() => _SegmentedViewState();
}

class _SegmentedViewState extends State<SegmentedView> {
  int selectedIndex = 0;
  var groupValue = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      print(_controller.value);
    });
  }

  final _controller = ValueNotifier('all');

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AdvancedSegment(
          controller: _controller,

          segments: const {
            // Map<String, String>
            'hourly': 'All',
            'allDay': 'Primary',
            'halfDay': 'Half day',
          },
          activeStyle: TextStyle(
            // TextStyle
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
          inactiveStyle: TextStyle(
            // TextStyle
            color: Colors.black38,
          ),
          backgroundColor: Styles.kBackGroundGrayColor,
          // Color
          sliderColor: Colors.white,
          // Color
          sliderOffset: 2.0,
          // Double
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          // BorderRadius
          itemPadding: const EdgeInsets.symmetric(
            // EdgeInsets
            horizontal: 15,
            vertical: 10,
          ),
          animationDuration: Duration(milliseconds: 250), // Duration
          /*
          sliderShadow: const <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8.0,
            ),
          ],
          */
        ),
      ],
    );
  }
}

