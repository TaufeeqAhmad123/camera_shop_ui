
import 'package:camera_shop/const/image.dart';

class ProductModel {
  final String productName;
  final double productPrice;
  final String productImg;
  final String productDescription;
  final List<String> productDetailImgList;

  ProductModel({
    required this.productName,
    required this.productPrice,
    required this.productImg,
    required this.productDescription,
    List<String>? productDetailImgs,
  }) : productDetailImgList = productDetailImgs ?? [];

  static List<ProductModel> productList = [
    ProductModel(
        productName: 'Rolleiflex 2.8',
        productPrice: 2500,
        productImg: AppImg.p1,
        productDescription:
            'The first 8 cm f2 8 taking lens in Rolleiflex line. "8 cm" typically refers to the focal length of the lens, while "f/2.8".',
        productDetailImgs: [
          AppImg.pd11,
          AppImg.pd12,
          AppImg.pd13,
        ]),
    ProductModel(
        productName: 'Kine Exakta',
        productPrice: 1450,
        productImg: AppImg.p2,
        productDescription: 'Old camera with an aesthatic filming machinism.',
        productDetailImgs: [
          AppImg.pd21,
          AppImg.pd22,
          AppImg.pd23,
        ]),
    ProductModel(
        productName: 'Nikon F, 1959',
        productPrice: 1300,
        productImg: AppImg.p3,
        productDescription:
            'Camera can take and display images with show time.',
        productDetailImgs: [
          AppImg.pd31,
          AppImg.pd32,
          AppImg.pd33,
        ]),
  ];
}
