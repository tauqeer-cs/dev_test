import 'package:flutter/material.dart';

import '../../theme/typography.dart';




class InfoDetailsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InfoItem(icon: Icons.phone, text: '+61 02 924 577'),
        InfoItem(icon: Icons.email, text: 'reception@space.com'),
        InfoItem(icon: Icons.web, text: 'www.space.com'),
      ],
    );
  }
}

class InfoItem extends StatelessWidget {
  final IconData icon;
  final String text;

  InfoItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
      child: Row(
        children: [
          Icon(icon,size: 14,),
          SizedBox(width: 10),
          Text(text,style: kLargeRegular),
        ],
      ),
    );
  }
}

