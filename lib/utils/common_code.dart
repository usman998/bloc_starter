



import 'package:bloc_starter/model/product_model.dart';

class CommonCode{

  CommonCode._internal();

  static final _instance = CommonCode._internal();

  factory CommonCode(){
    return _instance;
  }


  List<ProductModel> Products = [
    ProductModel(
        productId:"1",
        name:"Sofa 1",
        quantity:5,
        price:112,
        description:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        image:"https://media-cldnry.s-nbcnews.com/image/upload/newscms/2019_21/2870431/190524-classic-american-cheeseburger-ew-207p.jpg"
    ),
    ProductModel(
        productId:"2",
        name:"Sofa 2",
        quantity:5,
        price:152,
        description:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        image:"https://media-cldnry.s-nbcnews.com/image/upload/newscms/2019_21/2870431/190524-classic-american-cheeseburger-ew-207p.jpg"
    ),
    ProductModel(
        productId:"3",
        name:"Sofa 3",
        quantity:5,
        price:134,
        description:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        image:"https://media-cldnry.s-nbcnews.com/image/upload/newscms/2019_21/2870431/190524-classic-american-cheeseburger-ew-207p.jpg"
    ),
  ];
}