import 'package:flutter/material.dart';
import 'package:test_online_store/features/catalog_screen/models/menu_modal.dart';
import 'package:test_online_store/features/main_screen/models/product_model.dart';
import 'package:test_online_store/utils/all_text.dart';
import 'package:test_online_store/utils/data.dart';

class MainScreenViewModel extends ChangeNotifier {
  List<ProductModel> get hitsProducts =>
      Data.productsList.where((product) => product.numberOrders >= 50).toList();

  List<ProductModel> get promotionsProducts =>
      Data.productsList.where((product) => product.isPromotion).toList();

  List<ProductModel> get latestProductsList {
    List<ProductModel> sortedList = List<ProductModel>.from(Data.productsList);
    sortedList.sort((a, b) => b.dateAddition.compareTo(a.dateAddition));
    return sortedList.take(5).toList();
  }

  List<MenuModal> get appointmentList {
    return Data.catalogMenuList
        .where((sub) => sub.nameType == AllText.appointment)
        .toList();
  }

  List<ProductModel> sortByMenu(String typeOfSkin) {
    return Data.productsList
        .where((product) => product.typeOfSkin == typeOfSkin)
        .toList();
  }

  List<ProductModel> sortByVehicle({
    required String typeOfSkin,
    required String appointment,
  }) {
    return Data.productsList.where((product) {
      final matchesSkinType =
          typeOfSkin == AllText.anyType || product.typeOfSkin == typeOfSkin;
      return matchesSkinType && product.appointment == appointment;
    }).toList();
  }

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
}
