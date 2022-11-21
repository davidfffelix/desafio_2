import 'package:flutter/material.dart';
import 'components/appbar_carscreen_component.dart';
import 'components/bottom_carscreen_component.dart';
import 'components/header_carscreen_component.dart';
import 'components/imagegallery_carscreen_component.dart';
import 'home_page.dart';
import 'responsivity.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarCarScreenComponent(
          appBarColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
          ),
          action: Padding(
            padding: EdgeInsets.only(
              right: Responsivity.automatic(20, mediaQueryData),
            ),
            child: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
        ),
        body: Column(
          children: [
            const HeaderCarScreenComponent(
              title: 'Sparky',
              icon: Icons.car_crash,
              subtitle: 'Golden Retriever',
              age: '8 months old',
              distance: '2,5 kms away',
            ),
            SizedBox(
              height: Responsivity.automatic(20, mediaQueryData),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: Responsivity.automatic(20, mediaQueryData),
              ),
              child: const ImageGalleryCarScreenComponent(
                imageList: [
                  'assets/images/porsche.png',
                  'assets/images/porsche.png',
                  'assets/images/porsche.png',
                  'assets/images/porsche.png',
                  'assets/images/porsche.png',
                  'assets/images/porsche.png',
                  'assets/images/porsche.png',
                  'assets/images/porsche.png',
                  'assets/images/porsche.png',
                  'assets/images/porsche.png',
                ],
              ),
            ),
            SizedBox(
              height: Responsivity.automatic(10, mediaQueryData),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Responsivity.automatic(20, mediaQueryData),
              ),
              child: const BottomCarScreenComponent(
                text:
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. Many desktop publishing packages and web page editors now use Lorem Ipsum Various versions have evolved over.',
              ),
            ),
          ],
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.center,
              height: Responsivity.automatic(58, mediaQueryData),
              width: Responsivity.automatic(180, mediaQueryData),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    Responsivity.automatic(40, mediaQueryData),
                  ),
                ),
              ),
              child: const Text(
                'BUY',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
