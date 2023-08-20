import 'package:flutter/material.dart';
import '../theme/styles.dart';
import '../theme/typography.dart';
import 'inner_views/info_detail.dart';

class MapDetails extends StatelessWidget {
  const MapDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8 ,vertical: 16),
              child: Row(
                children: [
                  Expanded(
                    flex: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Bondi Junction, Sydney NSW',style: kLargeHeavy,),
                        Text('33 Bondi Road, Bondi Junction NSW 2000',
                          style: kLargeRegular.copyWith(color: Styles.kBackGroundGrayColorDark2),
                        ),

                        Expanded(child: Container()),
                        Text('Open hours',style: kLargeHeavy,),
                        Text('Mon to Fri 9am - 6pm' , style: kLargeRegular,),


                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'After hours bookings ',
                                style:  kLargeRegular,
                              ),
                              TextSpan(
                                text: 'Request here',
                                style: TextStyle(
                                  color: Colors.blue, // Blue color
                                  fontWeight: FontWeight.bold, // Bold text
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(child: Container()),
                        InfoDetailsWidget(),

                      ],
                    ),
                  ),
                  Expanded(
                    flex: 30,
                    child: ClipRRect(
                      borderRadius:
                      BorderRadius.circular(16.0),
                      // Adjust the radius as needed
                      child: Image.asset(
                        'assets/images/design/office_detail.jpeg',

                        fit: BoxFit.fitWidth,
                      ), // Replace 'your_image.png' with your asset path
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Image.asset(
              'assets/images/design/staticmap.png',
              fit: BoxFit.fitWidth,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
