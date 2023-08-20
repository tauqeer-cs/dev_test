import 'package:dev_text/theme/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme/spacer.dart';
import '../../widgets/buttons_group.dart';
import '../../widgets/filter_options.dart';
import '../../widgets/search_field.dart';

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
              kHorizontalSpacerMini,
              Expanded(child: FilterOptions()),
              kHorizontalSpacerMini,

              SelectableIconGroup(
                icons: [Icons.menu_outlined, Icons.grid_view_outlined],
                onIconSelected: (index) {
                  print('Selected icon at index: $index');
                },
              ),

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


class SelectableIconGroup extends StatefulWidget {
  final List<IconData> icons;
  final ValueChanged<int> onIconSelected;

  SelectableIconGroup({required this.icons, required this.onIconSelected});

  @override
  _SelectableIconGroupState createState() => _SelectableIconGroupState();
}

class _SelectableIconGroupState extends State<SelectableIconGroup> {
  int _selectedIconIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        widget.icons.length,
            (index) => GestureDetector(
          onTap: () {
            setState(() {
              _selectedIconIndex = index;
            });
            widget.onIconSelected(index);
          },
          child: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: _selectedIconIndex == index ? Styles.kBackGroundGrayColorDark : Colors.transparent,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Icon(widget.icons[index],
                size: 36.0, color: _selectedIconIndex == index ? Colors.blue : Colors.black38),
          ),
        ),
      ),
    );
  }
}








