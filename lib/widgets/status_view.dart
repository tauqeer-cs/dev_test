
import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  final bool isAvailable;

  const StatusWidget({super.key, required this.isAvailable});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -4),
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: isAvailable ? Colors.green.shade100 : Colors.red.shade100,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          isAvailable ? 'Available' : 'Occupied',
          style: TextStyle(
            color: isAvailable ? Colors.green : Colors.red,
          ),
        ),
      ),
    );
  }
}

