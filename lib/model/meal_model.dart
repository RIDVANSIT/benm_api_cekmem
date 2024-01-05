class MyMeal {
  String id;
  String mealName;
  String image;
  MyMeal.fromMap(Map<String, dynamic> map)
      : id = map["idMeal"],
        mealName = map["strMeal"],
        image = map["strMealThumb"];
}
