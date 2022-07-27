class CategoriesModel{

  int? id;
  String? name;

  CategoriesModel({
   required this.id, required this.name
  });

CategoriesModel.fromJson(Map<String, dynamic> json){
    id = json['id'] ?? null;
    name = json['name'] ?? null;
  }

  Map<String, dynamic> toJson(){
    return{
      'id' : id,
      'name' : name
    };
  }
}