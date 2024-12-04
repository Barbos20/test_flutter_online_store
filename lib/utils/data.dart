import 'package:test_online_store/features/catalog_screen/models/menu_modal.dart';
import 'package:test_online_store/features/main_screen/models/compilation_model.dart';
import 'package:test_online_store/features/main_screen/models/product_model.dart';
import 'package:test_online_store/utils/all_text.dart';
import 'package:test_online_store/utils/assets_pictures.dart';

class Data {
  static final List<ProductModel> productList = [
    ProductModel(
      picture: AssetsPictures.headLogo,
      offerDescription: AllText.discount(15),
      nameProduct: AllText.serum,
      productDescription: AllText.serumDescription,
      dateAddition: DateTime(2024, 10, 27),
      isPromotion: true,
      numberOrders: 12,
    ),
    ProductModel(
      picture: AssetsPictures.headLogo,
      offerDescription: AllText.discount(15),
      nameProduct: AllText.serum,
      productDescription: AllText.serumDescription,
      dateAddition: DateTime(2024, 10, 26),
      isPromotion: true,
      numberOrders: 12,
    ),
    ProductModel(
      picture: AssetsPictures.headLogo,
      offerDescription: AllText.discount(15),
      nameProduct: AllText.serum,
      productDescription: AllText.serumDescription,
      dateAddition: DateTime(2024, 10, 25),
      isPromotion: true,
      numberOrders: 12,
    ),
  ];

  static final List<CompilationModel> compilationList = [
    const CompilationModel(
      picture: AssetsPictures.creamPink,
      nameProduct: AllText.sets,
    ),
    const CompilationModel(
      picture: AssetsPictures.forFace,
      nameProduct: AllText.forFace,
    ),
    const CompilationModel(
      picture: AssetsPictures.creamBlue,
      nameProduct: AllText.forEyes,
    ),
    const CompilationModel(
      picture: AssetsPictures.forBody,
      nameProduct: AllText.forBody,
    ),
    const CompilationModel(
      picture: AssetsPictures.creamPink,
      nameProduct: AllText.washing,
    ),
    const CompilationModel(
      picture: AssetsPictures.creamBlue,
      nameProduct: AllText.forEyes,
    ),
    const CompilationModel(
      picture: AssetsPictures.creamPink,
      nameProduct: AllText.washing,
    ),
  ];

  static List<ProductModel> productsList = [
    ProductModel(
      picture: AssetsPictures.creamRed1,
      nameProduct: AllText.serum,
      productDescription: 'Forever Young- TotalRenewal Serum',
      correctPrice: 10195,
      dateAddition: DateTime(2024, 11, 14),
      isPromotion: false,
      numberOrders: 51,
    ),
    ProductModel(
      picture: AssetsPictures.creamRed2,
      nameProduct: AllText.lighteningMask,
      productDescription: 'Illustious Mask',
      correctPrice: 1596,
      dateAddition: DateTime(2024, 11, 13),
      isPromotion: false,
      numberOrders: 52,
    ),
    ProductModel(
      picture: AssetsPictures.creamRed1,
      nameProduct: AllText.serum,
      productDescription: 'Forever Young- TotalRenewal Serum',
      correctPrice: 3083,
      dateAddition: DateTime(2024, 11, 12),
      isPromotion: false,
      numberOrders: 55,
    ),
    ProductModel(
      picture: AssetsPictures.creamRed2,
      nameProduct: AllText.lighteningMask,
      productDescription: 'Illustious Mask',
      correctPrice: 5719,
      dateAddition: DateTime(2024, 11, 11),
      isPromotion: false,
      numberOrders: 53,
    ),
    ProductModel(
      picture: AssetsPictures.creamRed1,
      nameProduct: AllText.serum,
      productDescription: 'Forever Young- TotalRenewal Serum',
      correctPrice: 2970,
      dateAddition: DateTime(2024, 11, 10),
      isPromotion: false,
      numberOrders: 54,
    ),
    ProductModel(
      picture: AssetsPictures.creamPink1,
      promotionPicture: AssetsPictures.promotion,
      nameProduct: AllText.serum,
      productDescription: 'Unstress Total Serenity Serum',
      promotionPrice: 10195,
      correctPrice: 10195,
      dateAddition: DateTime(2024, 11, 19),
      isPromotion: true,
      numberOrders: 14,
    ),
    ProductModel(
      picture: AssetsPictures.creamPink2,
      promotionPicture: AssetsPictures.promotion,
      nameProduct: AllText.cream,
      productDescription: 'Unstress Revitalizing Toner',
      promotionPrice: 1595,
      correctPrice: 3195,
      doubleOffer: '1+1',
      dateAddition: DateTime(2024, 11, 18),
      isPromotion: true,
      numberOrders: 12,
    ),
    ProductModel(
      picture: AssetsPictures.creamPink1,
      promotionPicture: AssetsPictures.promotion,
      nameProduct: AllText.serum,
      productDescription: 'Unstress Total Serenity Serum',
      promotionPrice: 10999,
      correctPrice: 14083,
      dateAddition: DateTime(2024, 11, 17),
      isPromotion: true,
      numberOrders: 12,
    ),
    ProductModel(
      picture: AssetsPictures.creamPink2,
      promotionPicture: AssetsPictures.promotion,
      nameProduct: AllText.cream,
      productDescription: 'Unstress Revitalizing Toner',
      promotionPrice: 2099,
      correctPrice: 4079,
      doubleOffer: '1+1',
      dateAddition: DateTime(2024, 11, 16),
      isPromotion: true,
      numberOrders: 14,
    ),
    ProductModel(
      picture: AssetsPictures.creamPink1,
      promotionPicture: AssetsPictures.promotion,
      nameProduct: AllText.serum,
      productDescription: 'Unstress Total Serenity Serum',
      promotionPrice: 8624,
      correctPrice: 9999,
      dateAddition: DateTime(2024, 11, 15),
      isPromotion: true,
      numberOrders: 13,
    ),
    ProductModel(
      picture: AssetsPictures.creamGreen2,
      nameProduct: AllText.serum,
      productDescription: 'Unstress Total Serenity Serum',
      correctPrice: 10195,
      dateAddition: DateTime(2024, 11, 24),
      isPromotion: false,
      numberOrders: 1,
    ),
    ProductModel(
      picture: AssetsPictures.creamGreen1,
      nameProduct: AllText.toner,
      productDescription: 'Unstress Revitalizing Toner',
      correctPrice: 3095,
      dateAddition: DateTime(2024, 11, 23),
      isPromotion: false,
      numberOrders: 1,
    ),
    ProductModel(
      picture: AssetsPictures.creamGreen2,
      nameProduct: AllText.serum,
      productDescription: 'Unstress Total Serenity Serum',
      correctPrice: 14083,
      dateAddition: DateTime(2024, 11, 22),
      isPromotion: false,
      numberOrders: 1,
    ),
    ProductModel(
      picture: AssetsPictures.creamGreen1,
      nameProduct: AllText.toner,
      productDescription: 'Unstress Revitalizing Toner',
      correctPrice: 2099,
      dateAddition: DateTime(2024, 11, 21),
      isPromotion: false,
      numberOrders: 1,
    ),
    ProductModel(
      picture: AssetsPictures.creamGreen2,
      nameProduct: AllText.serum,
      productDescription: 'Unstress Total Serenity Serum',
      correctPrice: 8624,
      dateAddition: DateTime(2024, 11, 20),
      isPromotion: false,
      numberOrders: 1,
    ),
  ];

  static List<ProductModel> homeShcemetList = [
    ProductModel(
      picture: AssetsPictures.demakage,
      nameProduct: AllText.demakage,
      dateAddition: DateTime(2024, 11, 9),
      isPromotion: false,
      numberOrders: 13,
    ),
    ProductModel(
      picture: AssetsPictures.cleansing,
      nameProduct: AllText.cleansing,
      dateAddition: DateTime(2024, 11, 8),
      isPromotion: false,
      numberOrders: 12,
    ),
    ProductModel(
      picture: AssetsPictures.serum,
      nameProduct: AllText.serum,
      dateAddition: DateTime(2024, 11, 7),
      isPromotion: false,
      numberOrders: 33,
    ),
    ProductModel(
      picture: AssetsPictures.day_cream,
      nameProduct: AllText.dayCream,
      dateAddition: DateTime(2024, 11, 6),
      isPromotion: false,
      numberOrders: 23,
    ),
    ProductModel(
      picture: AssetsPictures.demakage,
      nameProduct: AllText.demakage,
      dateAddition: DateTime(2024, 11, 5),
      isPromotion: false,
      numberOrders: 41,
    ),
    ProductModel(
      picture: AssetsPictures.cleansing,
      nameProduct: AllText.cleansing,
      dateAddition: DateTime(2024, 11, 4),
      isPromotion: false,
      numberOrders: 23,
    ),
  ];

  static const List<MenuModal> catalogMenuList = [
    MenuModal(
      title: AllText.byAppointment,
      nameType: AllText.appointment,
      listSubtitle: [
        AllText.cleansing,
        AllText.humidification,
        AllText.regeneration,
      ],
    ),
    MenuModal(
      title: AllText.byTypeOfVehicle,
      nameType: AllText.typeOfVehicle,
      listSubtitle: [],
    ),
    MenuModal(
      title: AllText.byTypeOfSkin,
      nameType: AllText.typeOfSkin,
      listSubtitle: [
        AllText.oilySkin,
        AllText.combiSkin,
        AllText.normalSkin,
        AllText.drySkin,
        AllText.anyType,
      ],
    ),
    MenuModal(
      title: AllText.byCosmeticsLine,
      nameType: AllText.cosmeticsLine,
      listSubtitle: [],
    ),
    MenuModal(
      title: AllText.bySets,
      nameType: AllText.sets,
      listSubtitle: [],
    ),
    MenuModal(
      title: AllText.byPromotions,
      nameType: AllText.promotions,
      listSubtitle: [],
    ),
    MenuModal(
      nameType: AllText.consultationWithCosmetologist,
      listSubtitle: [],
    ),
  ];
}
