
class ProductModel{

  String productId="";
  String name="";
  int quantity=0;
  int price=0;
  String description="";
  String image="";


  ProductModel.empty();

  ProductModel({
    required this.name ,
    required this.description,
    required this.quantity,
    required this.price,
    required this.image,
    required this.productId
  });
}