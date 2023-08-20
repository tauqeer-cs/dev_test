import 'package:flutter/material.dart';

import '../../theme/spacer.dart';
import '../../widgets/segment.dart';
import 'custom_dropdown.dart';


class FilterOptions extends StatelessWidget {
  const FilterOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return                             Container(
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
