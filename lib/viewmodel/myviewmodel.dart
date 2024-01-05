import 'dart:convert' as convert;

import 'package:benm_api_cekmem/model/meal_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MealsViewModel with ChangeNotifier {
  final List<MyMeal> _meals = [];
  List<MyMeal> get meals => _meals;
  MealsViewModel() {
    _getMeals();
  }

  void _getMeals() async {
    Uri uri = Uri.parse(
        "https://www.themealdb.com/api/json/v1/1/filter.php?c=Seafood");
    http.Response response = await http.get(uri);
    Map<String, dynamic> allMeals = convert.jsonDecode(response.body);

    for (Map<String, dynamic> mealsMap in allMeals["meals"]) {
      MyMeal country = MyMeal.fromMap(mealsMap);
      _meals.add(country);
    }
    notifyListeners();
  }
}
