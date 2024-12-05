class ProductModel {
  const ProductModel({
    required this.picture,
    required this.nameProduct,
    required this.dateAddition,
    required this.isPromotion,
    required this.numberOrders,
    required this.appointment,
    required this.typeOfSkin,
    this.promotionPicture,
    this.productDescription,
    this.offerDescription,
    this.promotionPrice,
    this.correctPrice,
    this.doubleOffer,
  });

  final String picture;
  final String nameProduct;
  final DateTime dateAddition;
  final bool isPromotion;
  final int numberOrders;
  final String? promotionPicture;
  final String? productDescription;
  final String? offerDescription;
  final int? promotionPrice;
  final int? correctPrice;
  final String? doubleOffer;
  final String appointment;
  final String typeOfSkin;
}
