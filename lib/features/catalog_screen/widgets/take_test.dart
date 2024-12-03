import 'package:flutter/material.dart';
import 'package:test_online_store/features/widgets/custom_button.dart';
import 'package:test_online_store/utils/all_text.dart';
import 'package:test_online_store/utils/app_text_style.dart';
import 'package:test_online_store/utils/assets_pictures.dart';

class TakeTest extends StatelessWidget {
  const TakeTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 169,
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
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 24,
          ).copyWith(left: 24),
          child: SizedBox(
            height: 121,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  AllText.createScheme,
                  style: AppTextStyles.raleway700,
                ),
                Text(
                  AllText.tenQuestions,
                  style: AppTextStyles.raleway500.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                CustomButton(
                  onTap: () {},
                  buttonWidth: 110,
                  buttonHeight: 40,
                  fillColor: const Color(0xff2B2B2B),
                  borderColor: const Color(0xff2B2B2B),
                  borderRadius: 6,
                  title: AllText.takeTest,
                  textStyle: AppTextStyles.raleway600,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
