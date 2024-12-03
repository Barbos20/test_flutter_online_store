import 'package:flutter/material.dart';
import 'package:test_online_store/utils/app_text_style.dart';
import 'package:test_online_store/utils/data.dart';

class Compilations extends StatelessWidget {
  const Compilations({super.key});

  @override
  Widget build(BuildContext context) {
    const double _currentPaddingBetweenItems = 6;
    const double _firstLastItemPadding = 12;
    final _compilations = Data.compilationList;

    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _compilations.length,
        itemBuilder: (context, index) {
          final compilation = _compilations[index];
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0
                  ? _firstLastItemPadding
                  : _currentPaddingBetweenItems,
              right: index == _compilations.length - 1
                  ? _firstLastItemPadding
                  : _currentPaddingBetweenItems,
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () {},
              child: Column(
                children: [
                  Ink.image(
                    image: AssetImage(compilation.picture),
                    height: 72,
                    width: 72,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    compilation.nameProduct,
                    style: AppTextStyles.inter500,
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
