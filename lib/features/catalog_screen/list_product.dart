import 'package:flutter/material.dart';
import 'package:test_online_store/features/catalog_screen/models/sub_menu_modal.dart';
import 'package:test_online_store/features/catalog_screen/widgets/appointment_buttons_list.dart';
import 'package:test_online_store/features/catalog_screen/widgets/product_grid_item.dart';
import 'package:test_online_store/features/main_screen/view_model/main_screen_view_model.dart';
import 'package:test_online_store/utils/all_text.dart';
import 'package:test_online_store/utils/app_text_style.dart';
import 'package:test_online_store/utils/assets_pictures.dart';

class ListProduct extends StatefulWidget {
  const ListProduct({
    required this.listSubtitle,
    required this.title,
    super.key,
  });

  final String title;
  final SubMenuModal listSubtitle;

  @override
  State<ListProduct> createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  late SubMenuModal sortedProduct;
  final _viewModel = MainScreenViewModel();

  @override
  void initState() {
    selectSort(appointment: AllText.all);
    super.initState();
  }

  void selectSort({required String appointment}) {
    final newProdusts = _viewModel.sortByVehicle(
      typeOfSkin: widget.listSubtitle.name,
      appointment: appointment,
    );
    if (appointment == AllText.all) {
      setState(() {
        sortedProduct = SubMenuModal(
          name: widget.listSubtitle.name,
          forWhat: widget.listSubtitle.forWhat,
          products: widget.listSubtitle.products,
        );
      });
    } else {
      setState(() {
        sortedProduct = SubMenuModal(
          name: widget.listSubtitle.name,
          forWhat: widget.listSubtitle.forWhat,
          products: newProdusts,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final appointmentList = _viewModel.appointmentList[0].listSubtitle;

    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 12),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Text(
                  widget.title,
                  style: AppTextStyles.raleway600.copyWith(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AllText.countProducts(sortedProduct.products.length),
                      style: AppTextStyles.montserrat500.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    Image.asset(
                      AssetsPictures.fadersHorizontal,
                      height: 24,
                      width: 24,
                    ),
                  ],
                ),
                const SizedBox(height: 12),
              ]),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            sliver: SliverToBoxAdapter(
              child: AppointmentButtonsList(
                appointmentList: appointmentList,
                selectSort: (String appointment) => selectSort(
                  appointment: appointment,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 22,
                crossAxisSpacing: 12,
                childAspectRatio: 162 / 278,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final product = sortedProduct.products[index];
                  return ProductGridItem(
                    product: product,
                    viewModel: _viewModel,
                  );
                },
                childCount: sortedProduct.products.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
