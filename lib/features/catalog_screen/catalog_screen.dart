import 'package:flutter/material.dart';
import 'package:test_online_store/features/catalog_screen/widgets/list_menu_catalog.dart';
import 'package:test_online_store/features/catalog_screen/widgets/row_search.dart';
import 'package:test_online_store/features/catalog_screen/widgets/take_test.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: statusBarHeight),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    RowSearch(),
                    SizedBox(height: 39),
                    ListMenuCatalog(),
                  ],
                ),
              ),
            ),
            TakeTest(),
          ],
        ),
      ),
    );
  }
}
