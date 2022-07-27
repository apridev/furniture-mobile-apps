class ColorsModel{

  int? id;
  String? name;

  ColorsModel({
   required this.id, required this.name
  });

ColorsModel.fromJson(Map<String, dynamic> json){
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