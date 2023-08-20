import 'package:flutter/material.dart';

import '../../theme/spacer.dart';
import 'card_hours.dart';
import 'custom_dropdown.dart';


class ViewTop extends StatelessWidget {
  const ViewTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomDropdown(),
        Expanded(
          child: Container(),
        ),
        kHorizontalSpacerMini,
        const CardHours(),
        kHorizontalSpacerSmall,
        const Icon(Icons.search),
        kHorizontalSpacerSmall,
        const Icon(Icons.map_outlined),
        kHorizontalSpacerMini,
      ],
    );
  }
}
