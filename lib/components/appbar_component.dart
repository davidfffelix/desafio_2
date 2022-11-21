import 'package:flutter/material.dart';
import '../responsivity.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  final Color appBarColor;
  final Widget leading;
  final Widget title;
  final Widget actions;

  const AppBarComponent({
    Key? key,
    required this.appBarColor,
    required this.leading,
    required this.title,
    required this.actions,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 30);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Container(
        height: Responsivity.automatic(100, mediaQueryData),
        color: appBarColor,
        child: Padding(
          padding: EdgeInsets.only(
            left: Responsivity.automatic(20, mediaQueryData),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              leading,
              title,
              actions,
            ],
          ),
        ),
      ),
    );
  }
}
