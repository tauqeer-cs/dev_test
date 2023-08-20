import 'package:flutter/material.dart';

import '../../theme/spacer.dart';
import '../../theme/styles.dart';
import '../../theme/typography.dart';
import '../../util/constant_utils.dart';
import '../../widgets/status_view.dart';
import '../../widgets/vertical_divider.dart';


class ListRowItem extends StatelessWidget {
  final String imageName;
  final String roomText;
  final String timingsText;
  final String locationText;
  final String rateString;
  final int numberOfPeopleAllowed;
  final bool isAvailable;

  const ListRowItem(
      {Key? key,
      required this.imageName,
      required this.roomText,
      required this.timingsText,
      required this.locationText,
      required this.rateString,
      required this.numberOfPeopleAllowed,
      required this.isAvailable})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    bool showBiggerScreenDesign = ConstantUtils.isWeb(screenWidth);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16), // Adjust the radius as needed
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * (showBiggerScreenDesign ? 0.11 : 0.33),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                // Adjust the radius as needed
                child: Image.asset(
                  'assets/images/design/$imageName.jpeg',
                ), // Replace 'your_image.png' with your asset path
              ),
            ),
            kHorizontalSpacerSmall,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Row(
                    children: [
                      Text(roomText, style: kMediumHeavy),
                      Expanded(
                        child: Container(),
                      ),
                      StatusWidget(
                        isAvailable: isAvailable,
                      ),
                    ],
                  ),
                  kVerticalSpacerMini,

                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Styles.kBackGroundGrayColorDark2,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        timingsText,
                        style: kMediumMedium.copyWith(
                            color: Styles.kBackGroundGrayColorDark2),
                      ),
                    ],
                  ),
                  kVerticalSpacerMini,

                  Row(
                     children: [
                      Icon(
                        Icons.location_on,
                        color: Styles.kBackGroundGrayColorDark2,
                      ),
                      Text(
                        locationText,
                        style: kMediumMedium.copyWith(
                            color: Styles.kBackGroundGrayColorDark2),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "\$$rateString ",
                        style: kMediumHeavy.copyWith(color: Styles.kBlueColor),
                      ),
                      Text(
                        'per hr',
                        style: kMediumRegular.copyWith(
                            color: Styles.kBackGroundGrayColorDark2),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: VerticalDividerWidget(),
                      ),
                      const Icon(Icons.person_outline),
                      Text(
                        numberOfPeopleAllowed.toString(),
                          style: kLargeHeavy
                      ),
                      Expanded(child: Container()),
                      ElevatedButton(
                        onPressed:  isAvailable == false ? null : () {},
                        child: const Text('Book'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
