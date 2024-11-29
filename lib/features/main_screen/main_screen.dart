import 'package:flutter/material.dart';
import 'package:test_online_store/features/main_screen/widgets/compilations.dart';
import 'package:test_online_store/features/main_screen/widgets/offer_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const OfferWidget(),
          const SizedBox(height: 25),
          Compilations(),
        ],
      ),
    );
  }
}
