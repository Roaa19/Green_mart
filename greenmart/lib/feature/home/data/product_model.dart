class ProductModel {
  final String id;
  final String categoryId;
  final String image;
  final String name;
  final double price;
  final String quantityForPrice;

  ProductModel({required this.name, required this.id, required this.categoryId, required this.image, required this.price, required this.quantityForPrice});
}