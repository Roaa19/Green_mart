import 'package:greenmart/core/constans/app_image.dart';
import 'package:greenmart/feature/home/data/product_model.dart';

List<ProductModel> offers = [
   ProductModel(
    id: '1',
    categoryId: '1',
    image:
        'https://www.vhv.rs/dpng/d/425-4254380_apples-png-image-apple-fruit-transparent-png.png',
    name: 'Apple',
    price: 10.0,
    quantityForPrice: "1kg",
  ),
  ProductModel(
    id: '2',
    categoryId: '1',
    image:
        'https://i.pinimg.com/originals/38/1f/ae/381fae890b6d2e3aef851949e261a13a.png',
    name: 'Banana',
    price: 20.0,
    quantityForPrice: "1kg",
  ),
  ProductModel(
    id: '3',
    categoryId: '1',
    image:
        'https://www.vhv.rs/dpng/d/425-4254380_apples-png-image-apple-fruit-transparent-png.png',
    name: 'Apple',
    price: 30.0,
    quantityForPrice: "1kg",
  ),

  ProductModel(
    id: '4',
    categoryId: '1',
    image: 'https://pngimg.com/d/orange_PNG777.png',
    name: 'Orange',
    price: 10.0,
    quantityForPrice: "1kg",
  ),
];

List<ProductModel> bestSelling = [
  ProductModel(
    id: '2',
    categoryId: '1',
    image:
        'https://i.pinimg.com/originals/38/1f/ae/381fae890b6d2e3aef851949e261a13a.png',
    name: 'Banana',
    price: 20.0,
    quantityForPrice: "1kg",
  ),

  ProductModel(
    id: '3',
    categoryId: '1',
    image:
        'https://www.vhv.rs/dpng/d/425-4254380_apples-png-image-apple-fruit-transparent-png.png',
    name: 'Orange',
    price: 30.0,
    quantityForPrice: "1kg",
  ),

  ProductModel(
    id: '4',
    categoryId: '1',
    image: 'https://pngimg.com/d/orange_PNG777.png',
    name: 'Orange',
    price: 10.0,
    quantityForPrice: "1kg",
  ),
  ProductModel(
    id: '1',
    categoryId: '1',
    image:
        'https://www.vhv.rs/dpng/d/425-4254380_apples-png-image-apple-fruit-transparent-png.png',
    name: 'Apple',
    price: 10.0,
    quantityForPrice: "1kg",
  ),
];

List<ProductModel> allProducts = [
  ProductModel(
    id: '3',
    categoryId: '1',
    image:
        'https://www.vhv.rs/dpng/d/425-4254380_apples-png-image-apple-fruit-transparent-png.png',
    name: 'Orange',
    price: 30.0,
    quantityForPrice: "1kg",
  ),
  ProductModel(
    id: '2',
    categoryId: '1',
    image:
        'https://i.pinimg.com/originals/38/1f/ae/381fae890b6d2e3aef851949e261a13a.png',
    name: 'Banana',
    price: 20.0,
    quantityForPrice: "1kg",
  ),

  ProductModel(
    id: '1',
    categoryId: '1',
    image:
        'https://www.vhv.rs/dpng/d/425-4254380_apples-png-image-apple-fruit-transparent-png.png',
    name: 'Apple',
    price: 10.0,
    quantityForPrice: "1kg",
  ),

  ProductModel(
    id: '4',
    categoryId: '1',
    image: 'https://pngimg.com/d/orange_PNG777.png',
    name: 'Orange',
    price: 10.0,
    quantityForPrice: "1kg",
  ),
  ProductModel(
    id: '8',
    categoryId: '6',
    image: AppImage.diet,
    name: 'Diet Coke',
    price: 1.99,
    quantityForPrice: "355ml",
  ),
  ProductModel(
    id: '9',
    categoryId: '6',
    image: AppImage.sprite,
    name: 'Sprite Can',
    price: 1.50,
    quantityForPrice: "355ml",
  ),
  ProductModel(
    id: '10',
    categoryId: '6',
    image: AppImage.appleGrape,
    name: 'Apple & Grape Juice',
    price: 15.99,
    quantityForPrice: "2L",
  ),
  ProductModel(
    id: '12',
    categoryId: '6',
    image: AppImage.orange,
    name: 'Orange Juice',
    price: 15.99,
    quantityForPrice: "2L",
  ),
  ProductModel(
    id: '13',
    categoryId: '6',
    image: AppImage.cola,
    name: 'Coca Cola Can',
    price: 4.99,
    quantityForPrice: "330ml",
  ),
  ProductModel(
    id: '14',
    categoryId: '6',
    image: AppImage.pepsi,
    name: 'Pepsi',
    price: 4.99,
    quantityForPrice: "330ml",
  ),
];


List<ProductModel> getProductById(String categoryId){
 return allProducts.where((product) => product.categoryId == categoryId).toList();
}

List<ProductModel> getProductByName(String name){
 return allProducts.where((product) => product.name.toLowerCase().contains(name)).toList();
}