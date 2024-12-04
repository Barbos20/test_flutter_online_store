import 'package:flutter/material.dart';
import 'package:test_online_store/features/catalog_screen/sub_menu.dart';
import 'package:test_online_store/utils/all_text.dart';
import 'package:test_online_store/utils/app_text_style.dart';
import 'package:test_online_store/utils/assets_pictures.dart';
import 'package:test_online_store/utils/data.dart';

class ListMenuCatalog extends StatelessWidget {
  const ListMenuCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    const catalogMenuList = Data.catalogMenuList;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: catalogMenuList.asMap().entries.map(
          (entry) {
            final index = entry.key;
            final itemMenu = entry.value;
            return Padding(
              padding: EdgeInsets.only(
                bottom: index == catalogMenuList.length - 1 ? 0 : 32,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SubMenu(
                        title: itemMenu.title ?? '',
                        listSubtitle: itemMenu.listSubtitle,
                      ),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Text(
                      itemMenu.nameType,
                      style: AppTextStyles.raleway600.copyWith(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    if (itemMenu.nameType == AllText.promotions)
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Image.asset(
                          AssetsPictures.pinkPromotion,
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
