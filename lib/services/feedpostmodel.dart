class FeedPost {
  String recipeName;
  String steps;
  String ingredients;
  String recipeImage;
  String category;
  String like;
  String comment;

  FeedPost(
      {this.recipeName,
      this.steps,
      this.ingredients,
      this.recipeImage,
      this.category,
      this.like,
      this.comment});

  FeedPost.fromJson(Map<String, dynamic> json) {
    recipeName = json['recipeName'];
    steps = json['steps'];
    ingredients = json['ingredients'];
    recipeImage = json['recipeImage'];
    category = json['category'];
    like = json['like'];
    comment = json['comment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['recipeName'] = this.recipeName;
    data['steps'] = this.steps;
    data['ingredients'] = this.ingredients;
    data['recipeImage'] = this.recipeImage;
    data['category'] = this.category;
    data['like'] = this.like;
    data['comment'] = this.comment;
    return data;
  }

  
}