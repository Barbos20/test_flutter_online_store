import 'package:flutter/material.dart';
import 'package:test_online_store/features/catalog_screen/list_product.dart';
import 'package:test_online_store/features/catalog_screen/models/sub_menu_modal.dart';
import 'package:test_online_store/utils/all_text.dart';
import 'package:test_online_store/utils/app_text_style.dart';
import 'package:test_online_store/utils/data.dart';

class SubMenu extends StatelessWidget {
  const SubMenu({
    required this.title,
    required this.listSubtitle,
    super.key,
  });
  final String title;
  final List<SubMenuModal> listSubtitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: AppTextStyles.raleway700.copyWith(
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ).copyWith(
          top: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: listSubtitle.length,
              itemBuilder: (context, index) {
                final itemMenu = listSubtitle[index];
                return Padding(
                  padding: EdgeInsets.only(
                    bottom: index == listSubtitle.length - 1 ? 0 : 32,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            if (itemMenu.name == AllText.anyType) {
                              return ListProduct(
                                listSubtitle: SubMenuModal(
                                  name: AllText.anyType,
                                  forWhat: AllText.vehicleForAny,
                                  products: Data.productsList,
                                ),
                                title: itemMenu.forWhat,
                              );
                            } else {
                              return ListProduct(
                                listSubtitle: itemMenu,
                                title: itemMenu.forWhat,
                              );
                            }
                          },
                        ),
                      );
                    },
                    child: Text(
                      itemMenu.name,
                      style: AppTextStyles.raleway600.copyWith(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
