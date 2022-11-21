import 'package:flutter/material.dart';
import '../responsivity.dart';

class BottomCarScreenComponent extends StatelessWidget {
  const BottomCarScreenComponent({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'About',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: Responsivity.automatic(4, mediaQueryData),
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
