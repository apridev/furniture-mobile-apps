import 'package:furniture_app/models/categories-model.dart';
import 'package:furniture_app/models/colors-model.dart';

class ProductModel{

  int? id;
  String? name;
  String? thumbnail;
  CategoriesModel? categories;
  double? price;
  double? rating;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? review;
  List<ColorsModel>? colors;

  ProductModel({
   required this.id,
   required this.name,
   required this.thumbnail,
   required this.categories,
   required this.price,
   required this.rating,
   required this.review,
   required this.colors,
   required this.createdAt,
   required this.updatedAt,
  });

ProductModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    thumbnail = json['thumbnail'];
    categories = CategoriesModel.fromJson(json['categories']);
    price = double.parse(json['price']. toString());
    rating = double.parse(json['rating']. toString());
    review = json['id'];
    colors = json['colors'].map<ColorsModel>((colors) => ColorsModel.fromJson(colors)).toList();
    createdAt = DateTime.parse(json['createdAt']);
    updatedAt = DateTime.parse(json['updatedAt']);
  }

  Map<String, dynamic> toJson(){
    return{
      'id' : id,
      'name' : name,
      'thumbnail' : thumbnail,
      'categories' : categories?.toJson(),
      'price' : price,
      'rating' : rating,
      'review' : review,
      'colors' : colors?.map((colors) => colors.toJson()).toList(),
      'createdAt' : createdAt.toString(),
      'updatedAt' : updatedAt.toString(),
    };
  }
}