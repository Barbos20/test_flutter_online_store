import 'package:flutter/material.dart';
import 'package:test_online_store/features/main_screen/models/compilation.dart';
import 'package:test_online_store/utils/all_text.dart';
import 'package:test_online_store/utils/assets_pictures.dart';

class Compilations extends StatelessWidget {
  Compilations({super.key});

  final List<Compilation> _compilationList = [
    const Compilation(
      picture: AssetsPictures.cremePink,
      nameProduct: AllText.sets,
    ),
    const Compilation(
      picture: AssetsPictures.forFace,
      nameProduct: AllText.forFace,
    ),
    const Compilation(
      picture: AssetsPictures.cremeBlue,
      nameProduct: AllText.forEyes,
    ),
    const Compilation(
      picture: AssetsPictures.forBody,
      nameProduct: AllText.forBody,
    ),
    const Compilation(
      picture: AssetsPictures.cremePink,
      nameProduct: AllText.washing,
    ),
    const Compilation(
      picture: AssetsPictures.cremeBlue,
      nameProduct: AllText.forEyes,
    ),
    const Compilation(
      picture: AssetsPictures.cremePink,
      nameProduct: AllText.washing,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    const double currentPaddingBetweenItems = 6;
    const double firstLastItemPadding = 12;

    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _compilationList.length,
        itemBuilder: (context, index) {
          final compilation = _compilationList[index];
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0
                  ? firstLastItemPadding
                  : currentPaddingBetweenItems,
              right: index == _compilationList.length - 1
                  ? firstLastItemPadding
                  : currentPaddingBetweenItems,
            ),
            child: InkWell(
              onTap: () {},
              child: Column(
                children: [
                  Image.asset(
                    compilation.picture,
                    height: 72,
                    width: 72,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    compilation.nameProduct,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
