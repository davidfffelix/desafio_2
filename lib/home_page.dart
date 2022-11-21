import 'package:desafio_1/list_filter_item.dart';
import 'package:flutter/material.dart';
import 'components/car_card_component.dart';
import 'components/appbar_component.dart';
import 'components/list_items_component.dart';
import 'responsivity.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final filters = [
    ListFilterItem(icon: const Icon(Icons.menu)),
    ListFilterItem(
        icon: const Icon(Icons.car_rental), label: 'Aluguel de carro'),
    ListFilterItem(
        icon: const Icon(Icons.motorcycle_sharp), label: 'Venda de Moto'),
    ListFilterItem(icon: const Icon(Icons.car_repair), label: 'Reparo'),
    ListFilterItem(icon: const Icon(Icons.car_crash), label: 'Carro Batido'),
    ListFilterItem(icon: const Icon(Icons.lightbulb), label: 'Farol'),
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarComponent(
        appBarColor: Colors.white,
        leading: const Icon(Icons.menu),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Location',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            Text(
              'Cameron St., Boston',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: Padding(
          padding: EdgeInsets.only(
            right: Responsivity.automatic(20, mediaQueryData),
          ),
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/porsche.png'),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: Responsivity.automatic(50, mediaQueryData),
            margin: EdgeInsets.only(
              top: Responsivity.automatic(20, mediaQueryData),
            ),
            child: ListView.separated(
              // Não corta por que está dentro da lista
              padding: EdgeInsets.only(
                left: Responsivity.automatic(20, mediaQueryData),
              ),
              // Tamanho da lista de acordo com os itens da lista
              itemCount: filters.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: Responsivity.automatic(20, mediaQueryData),
                );
              },
              itemBuilder: (context, index) {
                final item = filters[index];
                return ListItemsComponent(icon: item.icon, label: item.label);
              },
            ),
          ),
          Expanded(
            child: ListView.separated(
                padding: EdgeInsets.only(
                  left: Responsivity.automatic(20, mediaQueryData),
                  top: Responsivity.automatic(30, mediaQueryData),
                  right: Responsivity.automatic(20, mediaQueryData),
                ),
                itemCount: 10,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: Responsivity.automatic(20, mediaQueryData),
                  );
                },
                itemBuilder: (context, index) {
                  return const CarCardComponent(
                    fontColor: Colors.grey,
                    backgroundColor: Colors.white,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
