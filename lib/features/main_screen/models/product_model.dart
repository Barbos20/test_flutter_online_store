class ProductModel {
  final String picture;
  final String? promotionPicture;
  final String nameProduct;
  final String productDescription;
  final int? promotionPrice;
  final int correctPrice;
  final String? doubleOffer = '1+1';

  const ProductModel({
    required this.picture,
    this.promotionPicture,
    required this.nameProduct,
    required this.productDescription,
    this.promotionPrice,
    required this.correctPrice,
  });
}
