class Category{
  int catId;
  String catName;
  List subCatName;

  Category({this.catName,this.subCatName,this.catId});

  Category.fromJson(Map<String, dynamic> json){
    catId = json['catId'];
    catName= json['catName'];
    subCatName= json['subCatName'];
  }

  Map<String , dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['catId'] = this.catId;
    data['catName'] = this.catName;
    data['subCatName'] = this.subCatName;
  }
}