import 'package:flutter/material.dart';
import '../responsivity.dart';
import 'filter_items_car_screen_component.dart';

class ImageGalleryCarScreenComponent extends StatelessWidget {
  const ImageGalleryCarScreenComponent({
    Key? key,
    required this.imageList,
  }) : super(key: key);

  final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return Row(
      children: [
        SizedBox(
          width: Responsivity.automatic(88, mediaQueryData),
          height: Responsivity.automatic(350, mediaQueryData),
          child: ShaderMask(
            // Efeito esfumaçado
            shaderCallback: (Rect rect) {
              return const LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.transparent,
                  Colors.white,
                ],
                stops: [0.0, 0.1],
              ).createShader(rect);
            },
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: imageList.length,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: Responsivity.automatic(16, mediaQueryData),
                );
              },
              itemBuilder: (context, index) {
                return SizedBox(
                  height: Responsivity.automatic(68, mediaQueryData),
                  width: Responsivity.automatic(68, mediaQueryData),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: FilterItemsCarScreenComponent(
                      imagePath: imageList[index],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: Responsivity.automatic(400, mediaQueryData),
          width: Responsivity.automatic(306, mediaQueryData),
          child: Stack(
            children: [
              Positioned(
                // Está posicionando o Container
                width: Responsivity.automatic(420, mediaQueryData),
                top: Responsivity.automatic(1, mediaQueryData),
                bottom: Responsivity.automatic(1, mediaQueryData),
                child: Container(
                  height: Responsivity.automatic(350, mediaQueryData),
                  width: Responsivity.automatic(350, mediaQueryData),
                  decoration: const BoxDecoration(
                    color: Color(0xffFFE46B),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                top: Responsivity.automatic(20, mediaQueryData),
                left: Responsivity.automatic(10, mediaQueryData),
                right: Responsivity.automatic(-50, mediaQueryData),
                child: Container(
                  height: Responsivity.automatic(400, mediaQueryData),
                  width: Responsivity.automatic(300, mediaQueryData),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/pug.png'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        Responsivity.automatic(15, mediaQueryData),
                      ),
                      bottomLeft: Radius.circular(
                        Responsivity.automatic(15, mediaQueryData),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
