import 'package:flutter/material.dart';
import 'package:test_online_store/features/widgets/custom_button.dart';
import 'package:test_online_store/utils/all_text.dart';
import 'package:test_online_store/utils/app_text_style.dart';
import 'package:test_online_store/utils/assets_pictures.dart';
import 'package:test_online_store/utils/data.dart';

class HomeCareScheme extends StatelessWidget {
  const HomeCareScheme({super.key});

  @override
  Widget build(BuildContext context) {
    const homeCare = Data.homeShcemetList;
    const double _currentPaddingBetweenItems = 6;
    const double _firstLastItemPadding = 12;

    return Stack(
      children: [
        Container(
          height: 262,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AssetsPictures.background,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 26,
                left: 22,
              ),
              child: Text(
                AllText.myScheme,
                style: AppTextStyles.raleway700,
              ),
            ),
            SizedBox(
              height: 131,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: homeCare.length,
                itemBuilder: (context, index) {
                  final product = homeCare[index];
                  return Container(
                    height: 101,
                    padding: EdgeInsets.only(
                      left: index == 0
                          ? _firstLastItemPadding
                          : _currentPaddingBetweenItems,
                      right: index == homeCare.length - 1
                          ? _firstLastItemPadding
                          : _currentPaddingBetweenItems,
                      top: 24,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 81,
                            height: 75,
                            alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Image.asset(
                                product.picture,
                              ),
                            ),
                          ),
                          Text(
                            product.nameProduct,
                            style: AppTextStyles.raleway500.copyWith(
                              color: Colors.black,
                              fontSize: 11.50,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 23),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      AllText.answerQuestion,
                      style: AppTextStyles.raleway500.copyWith(
                        color: Colors.black,
                        fontSize: 13,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  const SizedBox(width: 18),
                  CustomButton(
                    onTap: () {},
                    buttonWidth: 118,
                    buttonHeight: 40,
                    fillColor: const Color(0xff2B2B2B),
                    borderColor: const Color(0xff2B2B2B),
                    borderRadius: 6,
                    title: AllText.takeTest,
                    textStyle: AppTextStyles.raleway600,
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
