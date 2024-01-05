import 'package:benm_api_cekmem/viewmodel/myviewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer<MealsViewModel>(
      builder: (context, value, child) {
        return ListView.builder(
          itemCount: value.meals.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(value.meals[index].mealName),
              subtitle: Text(value.meals[index].id),
              leading: Image.network(value.meals[index].image),
            );
          },
        );
      },
    ));
  }
}
