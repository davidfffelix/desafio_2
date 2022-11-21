import 'package:flutter/material.dart';
import '../responsivity.dart';

class HeaderCarScreenComponent extends StatelessWidget {
  const HeaderCarScreenComponent({
    Key? key,
    required this.title,
    required this.icon,
    required this.subtitle,
    required this.age,
    required this.distance,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final String subtitle;
  final String age;
  final String distance;

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: Responsivity.automatic(20, mediaQueryData),
            right: Responsivity.automatic(20, mediaQueryData),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                icon,
                color: Colors.grey,
                size: 20,
              ),
            ],
          ),
        ),
        SizedBox(
          height: Responsivity.automatic(8, mediaQueryData),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: Responsivity.automatic(20, mediaQueryData),
            right: Responsivity.automatic(20, mediaQueryData),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subtitle,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                age,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: Responsivity.automatic(6, mediaQueryData),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: Responsivity.automatic(20, mediaQueryData),
          ),
          child: Row(
            children: [
              Transform.translate(
                offset: const Offset(-3, 0),
                child: const Icon(
                  Icons.location_on,
                  color: Colors.red,
                  size: 20,
                ),
              ),
              SizedBox(
                width: Responsivity.automatic(2, mediaQueryData),
              ),
              Text(
                distance,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
