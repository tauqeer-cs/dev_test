

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
        return ListView.builder(
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
            width: 1, // Adjust the border width as needed
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 12),
        child: SizedBox(
          //width: double.infinity,
          child: Row(
            children: [

              const Text('Filter By : '),
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
