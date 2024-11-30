import 'package:flutter/material.dart';
import 'package:test_online_store/features/main_screen/models/product_model.dart';
import 'package:test_online_store/utils/app_text_style.dart';

class NewProduct extends StatelessWidget {
  const NewProduct({
    required this.title,
    required this.stripColorStart,
    required this.stripColorEnd,
    required this.products,
    super.key,
  });

  final String title;
  final Color stripColorStart;
  final Color stripColorEnd;
  final List<ProductModel> products;

  String formatPrice(int price) {
    String priceString = price.toString();
    if (priceString.length >= 5) {
      priceString = priceString.replaceFirstMapped(
        RegExp(r'^(\d{2})(\d+)'),
        (match) => '${match.group(1)} ${match.group(2)}',
      );
    }
    return priceString;
  }

  double calculateTextWidth(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();
    return textPainter.width;
  }

  @override
  Widget build(BuildContext context) {
    const double _currentPaddingBetweenItems = 6;
    const double _firstLastItemPadding = 12;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.raleway600.copyWith(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Container(
                width: 118,
                height: 4,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [stripColorStart, stripColorEnd],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 305,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              final String priceText =
                  '${formatPrice((product.promotionPrice ?? product.correctPrice) ?? 0).toString()} ₽';
              final double textWidth =
                  calculateTextWidth(priceText, AppTextStyles.montserrat600);
              return Container(
                width: 161,
                padding: EdgeInsets.only(
                  left: index == 0
                      ? _firstLastItemPadding
                      : _currentPaddingBetweenItems,
                  right: index == products.length - 1
                      ? _firstLastItemPadding
                      : _currentPaddingBetweenItems,
                  top: 24,
                ),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 188,
                            width: 161,
                            decoration: BoxDecoration(
                              color: const Color(0xffF4F4F4),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset(
                              product.picture,
                              height: 72,
                              width: 72,
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
                      const SizedBox(height: 7),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.nameProduct,
                            style: AppTextStyles.raleway500.copyWith(
                              color: Colors.black,
                              fontSize: 11.50,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            product.productDescription ?? '',
                            style: AppTextStyles.raleway600.copyWith(
                              color: Colors.black,
                              fontSize: 14,
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
                                      '${formatPrice(product.correctPrice ?? 0).toString()} ₽',
                                      style:
                                          AppTextStyles.montserrat600.copyWith(
                                        color: const Color(
                                          0xff00000033,
                                        ).withOpacity(0.2),
                                        decoration: TextDecoration.lineThrough,
                                        decorationColor: const Color(
                                          0xff00000033,
                                        ).withOpacity(0.2),
                                        decorationThickness: 2,
                                      ),
                                    ),
                                  )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
