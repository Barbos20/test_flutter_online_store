import 'package:flutter/material.dart';
import 'package:test_online_store/features/main_screen/models/product_model.dart';
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
}
