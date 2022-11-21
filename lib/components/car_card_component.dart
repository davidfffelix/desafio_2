import 'package:flutter/material.dart';
import '../car_screen.dart';
import '../responsivity.dart';

class CarCardComponent extends StatelessWidget {
  final Color fontColor;
  final Color backgroundColor;

  const CarCardComponent({
    Key? key,
    required this.fontColor,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Container(
      // Espaçamento entre os filhos
      height: Responsivity.automatic(120, mediaQueryData),
      padding: EdgeInsets.all(
        Responsivity.automatic(10, mediaQueryData),
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(
          Responsivity.automatic(15, mediaQueryData),
        ),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CarScreen(),
                ),
              );
            },
            child: Container(
              // Recorta a parte da imagem que passou da borda
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.only(
                right: Responsivity.automatic(8, mediaQueryData),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Responsivity.automatic(15, mediaQueryData),
                ),
              ),
              child: const Image(
                image: AssetImage('assets/images/porsche.png'),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Flexible(
                  flex: 2,
                  child: Text(
                    'Sparky',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),
                const Flexible(
                  flex: 2,
                  child: Text(
                    'Golden Retriever',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: Responsivity.automatic(2, mediaQueryData),
                  ),
                  child: Text(
                    'Female, 8 months old',
                    style: TextStyle(
                      color: fontColor,
                      fontSize: 10,
                    ),
                  ),
                ),
                const Spacer(),
                Transform.translate(
                  offset: const Offset(-2, 0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.red,
                        size: 16,
                      ),
                      SizedBox(
                        width: Responsivity.automatic(1, mediaQueryData),
                      ),
                      const Text(
                        '2,5 kms away',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
