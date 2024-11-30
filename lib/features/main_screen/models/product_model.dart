class ProductModel {
  final String picture;
  final String? promotionPicture;
  final String nameProduct;
  final String? productDescription;
  final String? offerDescription;
  final int? promotionPrice;
  final int? correctPrice;
  final String? doubleOffer = '1+1';

  const ProductModel({
    required this.picture,
    this.promotionPicture,
    required this.nameProduct,
    this.productDescription,
    this.offerDescription,
    this.promotionPrice,
    this.correctPrice,
  });
}
