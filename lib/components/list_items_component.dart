import 'package:flutter/material.dart';

import '../responsivity.dart';

class ListItemsComponent extends StatelessWidget {
  final Widget icon;
  final String? label;

  const ListItemsComponent({
    Key? key,
    this.label,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(
        Responsivity.automatic(10, mediaQueryData),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          // ... Adiciona/expandi os itens na lista.
          // Exibir ou não
          if (label != null) ...{
            // Quando não for nulo
            SizedBox(
              width: Responsivity.automatic(15, mediaQueryData),
            ),
            Text(label!), // Não será nulo
          }
        ],
      ),
    );
  }
}
