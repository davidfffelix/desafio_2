import 'package:flutter/material.dart';
import '../responsivity.dart';

class FilterItemsCarScreenComponent extends StatelessWidget {
  const FilterItemsCarScreenComponent({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(
          Responsivity.automatic(15, mediaQueryData),
        ),
      ),
      child: Image(
        image: AssetImage(
          imagePath,
        ),
      ),
    );
  }
}
