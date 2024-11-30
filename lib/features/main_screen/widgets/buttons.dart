import 'package:flutter/material.dart';
import 'package:test_online_store/features/widgets/custom_button.dart';
import 'package:test_online_store/utils/all_text.dart';
import 'package:test_online_store/utils/app_text_style.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 128,
        width: 375,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  onTap: () {},
                  buttonWidth: 168,
                  buttonHeight: 60,
                  fillColor: Colors.transparent,
                  borderColor: Colors.black.withOpacity(0.1),
                  borderRadius: 9,
                  title: AllText.forCleansing,
                  textStyle: AppTextStyles.raleway500.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                CustomButton(
                  onTap: () {},
                  buttonWidth: 168,
                  buttonHeight: 60,
                  fillColor: Colors.transparent,
                  borderColor: Colors.black.withOpacity(0.1),
                  borderRadius: 9,
                  title: AllText.forMoisturizing,
                  textStyle: AppTextStyles.raleway500.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  onTap: () {},
                  buttonWidth: 168,
                  buttonHeight: 60,
                  fillColor: Colors.transparent,
                  borderColor: Colors.black.withOpacity(0.1),
                  borderRadius: 9,
                  title: AllText.forNourish,
                  textStyle: AppTextStyles.raleway500.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                CustomButton(
                  onTap: () {},
                  buttonWidth: 168,
                  buttonHeight: 60,
                  fillColor: Colors.transparent,
                  borderColor: Colors.black.withOpacity(0.1),
                  borderRadius: 9,
                  title: AllText.forRejuvenation,
                  textStyle: AppTextStyles.raleway500.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
