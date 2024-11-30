import 'package:flutter/material.dart';
import 'package:test_online_store/utils/all_text.dart';
import 'package:test_online_store/utils/app_text_style.dart';
import 'package:test_online_store/utils/data.dart';

class OfferWidget extends StatefulWidget {
  const OfferWidget({
    super.key,
  });

  @override
  State<OfferWidget> createState() => OfferWidgetState();
}

class OfferWidgetState extends State<OfferWidget> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final products = Data.productList;
    return Stack(
      children: [
        SizedBox(
          height: 359,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 359,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(product.picture),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 359,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: [
                          Colors.black54,
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 24,
                        bottom: 28,
                        right: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.offerDescription,
                                style: AppTextStyles.velaSans600,
                              ),
                              Text(
                                product.nameProduct,
                                style: AppTextStyles.velaSans400,
                              ),
                              Text(
                                product.productDescription,
                                style: AppTextStyles.velaSans400,
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 120,
                              height: 36,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 11,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(3),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  AllText.goToPromotion,
                                  style: AppTextStyles.raleway600,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top + 3,
          left: 24,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
              products.length,
              (index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index
                      ? const Color(0xffD9D9D9)
                      : const Color(0xffD9D9D9).withOpacity(0.5),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
