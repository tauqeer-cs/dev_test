import 'package:dev_text/theme/spacer.dart';
import 'package:dev_text/theme/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/typography.dart';
import '../util/constant_utils.dart';
import '../widgets/app_bar.dart';
import '../widgets/app_bar_web.dart';
import '../widgets/filter_options.dart';
import '../widgets/segment.dart';
import 'inner_views/custom_dropdown.dart';
import 'inner_views/list_item.dart';
import 'inner_views/view_top.dart';
import 'inner_views/view_top_web.dart';
import 'map_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    bool showBiggerScreenDesign = ConstantUtils.isWeb(screenWidth);

    return showBiggerScreenDesign
        ? Scaffold(
            appBar: const AppAppBarWeb(
              height: 60,
              title: 'hamlet',
            ),
            body: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(width: double.infinity,height: 1,color: Styles.kBackGroundGrayColor,),
                  const SizedBox(height: 2,),
                  const ViewTopWeb(),
                  kVerticalSpacerMini,
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Container(
                            color: Styles.kBackGroundGrayColor,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  buildFilterOptions(),
                                  kVerticalSpacer,
                                  buildFoundIssueLabel(),
                                  kVerticalSpacerSmall,
                                  Expanded(
                                    child: buildListView(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                         Expanded(
                          flex: 4,
                          child: Container(
                              color: Styles.kBackGroundGrayColor,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16), // Adjust the radius as needed
                                    ),
                                    child: const MapDetails()),
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : Scaffold(
            appBar: const AppAppBar(
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
                            buildFilterOptions(),
                            kVerticalSpacer,
                            buildFoundIssueLabel(),
                            kVerticalSpacerSmall,
                            Expanded(
                              child: buildListView(),
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

  Padding buildFoundIssueLabel() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Text(
        'Found ${ConstantUtils.numberOfItemsToShowInList} Spaces',
        style: k18SemiBold,
      ),
    );
  }

  ListView buildListView() {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 8,
      ),
      itemCount: ConstantUtils.numberOfItemsToShowInList,
      itemBuilder: (context, index) => ListRowItem(
        imageName: 'officeImage${index % 3 + 1}',
        roomText: 'Room 0${index + 1}',
        timingsText: 'All day (9:00am - 6:00pm)',
        locationText: 'Pyrmont , Sydney',
        rateString: '12',
        numberOfPeopleAllowed: 20,
        isAvailable: index % 3 == 1 ? false : true,
      ),
    );
  }

  Container buildFilterOptions() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16), // Adjust the radius as needed
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
                  flex: 2,
                  child: DateSelectorWidget(),
                ),
                kHorizontalSpacerSmall,
                Expanded(
                  flex: 3,
                  child: TimeRangeSelectorWidget(),
                ),
              ],
            ),
            //kVerticalSpacer,

            //  kVerticalSpacerSmall,
          ],
        ),
      ),
    );
  }
}
