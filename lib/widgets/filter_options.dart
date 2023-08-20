

import 'package:flutter/material.dart';

import '../theme/styles.dart';

class FilterOptions extends StatefulWidget {
  const FilterOptions({Key? key}) : super(key: key);

  @override
  State<FilterOptions> createState() =>
      _FilterOptionsState();
}

class _FilterOptionsState extends State<FilterOptions> {
  List<String> options = [
    'All',
    'Free',
  ];
  String selectedOption = 'All';

  void _showOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: ListView.builder(
            itemCount: options.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  setState(() {
                    selectedOption = options[index];
                  });
                  Navigator.pop(context);
                },
                title: Text(options[index]),
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showOptions(context);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Styles.kBackGroundGrayColorDark,
            // Replace with your desired border color
            width: 1, // Adjust the border width as needed
          ),
        ),
        padding: const EdgeInsets.all(8),
        child: SizedBox(
          //width: double.infinity,
          child: Row(
            children: [

              Text('Filter By : '),
              const SizedBox(width: 4),
              Text(selectedOption),
              const Spacer(),
              Icon(
                Icons.keyboard_arrow_down,
                color: Styles.kBackGroundGrayColorDark,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
