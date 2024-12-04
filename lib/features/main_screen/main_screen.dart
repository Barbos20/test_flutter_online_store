import 'package:flutter/material.dart';
import 'package:test_online_store/features/main_screen/view_model/main_screen_view_model.dart';
import 'package:test_online_store/features/main_screen/widgets/buttons.dart';
import 'package:test_online_store/features/main_screen/widgets/compilations.dart';
import 'package:test_online_store/features/main_screen/widgets/home_care_scheme.dart';
import 'package:test_online_store/features/main_screen/widgets/new_product.dart';
import 'package:test_online_store/features/main_screen/widgets/offer_widget.dart';
import 'package:test_online_store/utils/all_text.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MainScreen> {
  late MainScreenViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = MainScreenViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const OfferWidget(),
          const SizedBox(height: 25),
          const Compilations(),
          const SizedBox(height: 32),
          NewProduct(
            title: AllText.newProduct,
            stripColorStart: const Color(0xffE4FEF9),
            stripColorEnd: const Color(0xff66F6DC),
            products: viewModel.latestProductsList,
          ),
          const SizedBox(height: 40.53),
          const HomeCareScheme(),
          const SizedBox(height: 24),
          NewProduct(
            title: AllText.promotions,
            stripColorStart: const Color(0xffFFC0E1),
            stripColorEnd: const Color(0xffF02980),
            products: viewModel.promotionsProducts,
          ),
          const SizedBox(height: 41),
          const Buttons(),
          const SizedBox(height: 25),
          NewProduct(
            title: AllText.hits,
            stripColorStart: const Color(0xffF86614),
            stripColorEnd: const Color(0xffFCBC5C),
            products: viewModel.hitsProducts,
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
