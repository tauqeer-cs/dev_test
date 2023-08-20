import 'package:dev_text/theme/spacer.dart';
import 'package:dev_text/theme/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_advanced_segment/flutter_advanced_segment.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import '../theme/typography.dart';
import '../widgets/app_bar.dart';
import '../widgets/app_bar_web.dart';
import '../widgets/segment.dart';
import '../widgets/status_view.dart';
import '../widgets/vertical_divider.dart';
import 'inner_views/card_hours.dart';
import 'inner_views/custom_dropdown.dart';
import 'inner_views/view_top.dart';
import 'inner_views/view_top_web.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return kIsWeb ? Scaffold(
      appBar: AppAppBarWeb(
        height: 60,
        title: 'hamlet',
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            const ViewTopWeb(),
            kVerticalSpacerMini,
            Expanded(
              child: Container(
                color: Styles.kBackGroundGrayColor,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                              16), // Adjust the radius as needed
                        ),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SegmentedView(),
                              kVerticalSpacerSmall,
                              const CustomDropdownWithBorder(),
                              kVerticalSpacerSmall,

                              Row(
                                children: [
                                  Expanded(
                                      flex: 2, child: DateSelectorWidget()),
                                  kHorizontalSpacerSmall,
                                  Expanded(
                                      flex: 3,
                                      child: TimeRangeSelectorWidget()),
                                ],
                              ),
                              //kVerticalSpacer,

                              //  kVerticalSpacerSmall,
                            ],
                          ),
                        ),
                      ),
                      kVerticalSpacer,
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          'Found 12 Spaces',
                          style: k18SemiBold,
                        ),
                      ),
                      kVerticalSpacerSmall,
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                              16), // Adjust the radius as needed
                        ),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  // Adjust the radius as needed
                                  child: Image.asset(
                                      'assets/images/design/officeImage1.jpeg'), // Replace 'your_image.png' with your asset path
                                ),
                              ),
                              kHorizontalSpacerMini,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.stretch,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Room 1'),
                                        Expanded(
                                          child: Container(),
                                        ),
                                        StatusWidget(
                                          isAvailable: true,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.access_time),
                                        Text('All day (9:00am - 6:00pm)'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on),
                                        Text('Pyrmont , Sydney'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("\$12 "),
                                        Text('per hr'),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 6),
                                          child: VerticalDividerWidget(),
                                        ),
                                        const Icon(Icons.person_outline),
                                        Text('20'),
                                        Expanded(
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              child: Text('Book')),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ) : Scaffold(
      appBar: AppAppBar(
        height: 60,
        title: 'hamlet',
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const ViewTop(),
            kVerticalSpacerMini,
            Expanded(
              child: Container(
                color: Styles.kBackGroundGrayColor,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                              16), // Adjust the radius as needed
                        ),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SegmentedView(),
                              kVerticalSpacerSmall,
                              const CustomDropdownWithBorder(),
                              kVerticalSpacerSmall,

                              Row(
                                children: [
                                  Expanded(
                                      flex: 2, child: DateSelectorWidget()),
                                  kHorizontalSpacerSmall,
                                  Expanded(
                                      flex: 3,
                                      child: TimeRangeSelectorWidget()),
                                ],
                              ),
                              //kVerticalSpacer,

                              //  kVerticalSpacerSmall,
                            ],
                          ),
                        ),
                      ),
                      kVerticalSpacer,
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          'Found 12 Spaces',
                          style: k18SemiBold,
                        ),
                      ),
                      kVerticalSpacerSmall,
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                              16), // Adjust the radius as needed
                        ),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  // Adjust the radius as needed
                                  child: Image.asset(
                                      'assets/images/design/officeImage1.jpeg'), // Replace 'your_image.png' with your asset path
                                ),
                              ),
                              kHorizontalSpacerMini,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Row(
                                      children: [
                                        const Text('Room 1'),
                                        Expanded(
                                          child: Container(),
                                        ),
                                        const StatusWidget(
                                          isAvailable: true,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.access_time),
                                        Text('All day (9:00am - 6:00pm)'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on),
                                        Text('Pyrmont , Sydney'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("\$12 "),
                                        Text('per hr'),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 6),
                                          child: VerticalDividerWidget(),
                                        ),
                                        const Icon(Icons.person_outline),
                                        Text('20'),
                                        Expanded(
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              child: Text('Book')),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




