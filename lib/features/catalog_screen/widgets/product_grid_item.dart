import 'package:flutter/material.dart';
import 'package:test_online_store/features/main_screen/models/product_model.dart';
import 'package:test_online_store/features/main_screen/view_model/main_screen_view_model.dart';
import 'package:test_online_store/utils/app_text_style.dart';

class ProductGridItem extends StatelessWidget {
  const ProductGridItem({
    required this.product,
    required this.viewModel,
    super.key,
  });

  final ProductModel product;
  final MainScreenViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    final priceText =
        '${viewModel.formatPrice((product.promotionPrice ?? product.correctPrice) ?? 0)} ₽';
    final textWidth =
        viewModel.calculateTextWidth(priceText, AppTextStyles.montserrat600);

    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 217,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Ink(
                    decoration: BoxDecoration(
                      color: const Color(0xffF4F4F4),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        product.picture,
                      ),
                    ),
                  ),
                ),
                if (product.promotionPicture != null)
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Image.asset(
                      product.promotionPicture!,
                      height: 25,
                      width: 25,
                    ),
                  ),
                if (product.doubleOffer != null)
                  Positioned(
                    top: 44,
                    right: 8,
                    child: Text(
                      product.doubleOffer!,
                      style: AppTextStyles.montserrat600.copyWith(
                        color: const Color(0xffF47DDA),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 7),
          Text(
            product.nameProduct,
            style: AppTextStyles.raleway500.copyWith(
              fontSize: 11.5,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            product.productDescription ?? '',
            style: AppTextStyles.raleway600.copyWith(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 2),
          SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                Text(
                  priceText,
                  style: AppTextStyles.montserrat600,
                ),
                if (product.promotionPrice != null)
                  Positioned(
                    left: textWidth + 10,
                    child: Text(
                      '${viewModel.formatPrice(product.correctPrice ?? 0)} ₽',
                      style: AppTextStyles.montserrat600.copyWith(
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Colors.grey.withOpacity(0.5),
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
