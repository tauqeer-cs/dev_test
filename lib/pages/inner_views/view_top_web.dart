import 'package:flutter/material.dart';

import '../../theme/spacer.dart';
import '../../widgets/buttons_group.dart';
import '../../widgets/search_field.dart';
import 'card_hours.dart';
import 'custom_dropdown.dart';


class ViewTopWeb extends StatelessWidget {
  const ViewTopWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Expanded(
            flex: 6,
            child:Container(
              child: const Align(
                  alignment: Alignment.topLeft,
                  child: ButtonGroupExample()),
            ),
        ),
        Expanded(
          flex: 4,
          child: Row(
            children: [
              CustomSearchWidget(),
              kHorizontalSpacerSmall,
              const Icon(Icons.search),
              kHorizontalSpacerSmall,
              const Icon(Icons.map_outlined),
              kHorizontalSpacerMini,
            ],
          ),
        ),
        kHorizontalSpacerMini,

//      kHorizontalSpacerMini,
 //       ,

      ],
    );
  }
}
