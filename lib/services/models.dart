class FeedPost{
  String category;
  String ingredients;
  String steps;
  bool like;
  String recipeName;
  String recipeImage;
  String comment;

  FeedPost(
      {this.category,
      this.ingredients,
      this.steps,
      this.like,
      this.recipeName,
      this.recipeImage,
      this.comment});

  FeedPost.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    ingredients = json['ingredients'];
    steps = json['steps'];
    like = json['like'];
    recipeName = json['recipeName'];
    recipeImage = json['recipeImage'];
    comment = json['comment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category'] = this.category;
    data['ingredients'] = this.ingredients;
    data['steps'] = this.steps;
    data['like'] = this.like;
    data['recipeName'] = this.recipeName;
    data['recipeImage'] = this.recipeImage;
    data['comment'] = this.comment;
    return data;
  }
}
