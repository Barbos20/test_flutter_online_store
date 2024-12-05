import 'package:test_online_store/features/main_screen/models/product_model.dart';

class SubMenuModal {
  const SubMenuModal({
    required this.name,
    required this.forWhat,
    required this.products,
  });

  final String name;
  final String forWhat;
  final List<ProductModel> products;
}
