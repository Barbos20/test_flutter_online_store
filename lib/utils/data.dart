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
    ),
    ProductModel(
      picture: AssetsPictures.headLogo,
      offerDescription: AllText.discount(15),
      nameProduct: AllText.serum,
      productDescription: AllText.serumDescription,
    ),
    ProductModel(
      picture: AssetsPictures.headLogo,
      offerDescription: AllText.discount(15),
      nameProduct: AllText.serum,
      productDescription: AllText.serumDescription,
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

  static final List<ProductModel> newProductsList = [
    const ProductModel(
      picture: AssetsPictures.creamGreen2,
      nameProduct: AllText.serum,
      productDescription: 'Unstress Total Serenity Serum',
      correctPrice: 10195,
    ),
    const ProductModel(
      picture: AssetsPictures.creamGreen1,
      nameProduct: AllText.toner,
      productDescription: 'Unstress Revitalizing Toner',
      correctPrice: 3095,
    ),
    const ProductModel(
      picture: AssetsPictures.creamGreen2,
      nameProduct: AllText.serum,
      productDescription: 'Unstress Total Serenity Serum',
      correctPrice: 14083,
    ),
    const ProductModel(
      picture: AssetsPictures.creamGreen1,
      nameProduct: AllText.toner,
      productDescription: 'Unstress Revitalizing Toner',
      correctPrice: 2099,
    ),
    const ProductModel(
      picture: AssetsPictures.creamGreen2,
      nameProduct: AllText.serum,
      productDescription: 'Unstress Total Serenity Serum',
      correctPrice: 8624,
    ),
  ];

  static const List<ProductModel> homeShcemetList = [
    ProductModel(
      picture: AssetsPictures.demakage,
      nameProduct: AllText.demakage,
    ),
    ProductModel(
      picture: AssetsPictures.cleansing,
      nameProduct: AllText.cleansing,
    ),
    ProductModel(
      picture: AssetsPictures.serum,
      nameProduct: AllText.serum,
    ),
    ProductModel(
      picture: AssetsPictures.day_cream,
      nameProduct: AllText.dayCream,
    ),
    ProductModel(
      picture: AssetsPictures.demakage,
      nameProduct: AllText.demakage,
    ),
    ProductModel(
      picture: AssetsPictures.cleansing,
      nameProduct: AllText.cleansing,
    ),
  ];
}
