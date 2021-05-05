class Recipe{
  int catId;
  String catName;
  String subcatName;
  String recipeCal;
  int recipeId;
  String recipeImage;
  List recipeIngredients;
  String recipeName;
  String recipeRating;
  List recipeSteps;
  String Step1;
  String Step2;
  String recipeTime;
  String recipeserving;
  int subcatId;


  Recipe({this.catName,this.catId,this.recipeCal,this.recipeId,this.recipeImage,this.recipeIngredients,
    this.recipeName,this.recipeRating,this.recipeserving,this.recipeSteps,this.recipeTime,this.Step1,
    this.Step2,this.subcatId,this.subcatName});

  Recipe.fromJson(Map<String, dynamic> json){
    catId = json['catId'];
    catName= json['catName'];
    recipeCal= json['recipeCal'];
    recipeId= json['recipeId'];
    recipeImage= json['recipeImage'];
    recipeIngredients= json['recipeIngredients'];
    recipeRating= json['recipeRating'];
    recipeserving= json['recipeserving'];
    recipeTime= json['recipeTime'];
    Step1= json['Step1'];
    Step2= json['Step2'];
    subcatId= json['subcatId'];
    recipeName= json['recipeName'];
    recipeSteps= json['recipeSteps'];
    subcatName= json['subcatName'];
  }

  Map<String , dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['catId'] = this.catId;
    data['catName'] = this.catName;
    data['subcatName'] = this.subcatName;
    data['recipeCal']=this.recipeCal ;
    data['recipeId']=this.recipeId;
    data['recipeImage']=this.recipeImage;
    data['recipeIngredients']=this.recipeIngredients;
    data['recipeRating']=this.recipeRating;
    data['recipeserving']=this.recipeserving;
    data['recipeTime']=this.recipeTime;
    data['Step1']=this.Step1;
    data['Step2']=this.Step2;
    data['subcatId']=this.subcatId;
    data['recipeName']=this.recipeName;
    data['recipeSteps']=this.recipeSteps;
  }
}