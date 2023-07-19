import 'package:flutter/material.dart';
import 'package:meals_app/models/meals.dart';
import 'package:meals_app/screens/melas_details_screen.dart';
import 'package:meals_app/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    this.title,
    required this.meals,
    required this.ontToggleFavorite,
  });

  final String? title;
  final List<Meal> meals;
  final void Function(Meal meal) ontToggleFavorite;

  void selectMeal(BuildContext context, Meal meal) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MealsDetailsScreen(
          meal: meal,
          ontToggleFavorite: ontToggleFavorite,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext ctx) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('uh oh....nothing here!',
              style: Theme.of(ctx).textTheme.headlineLarge!.copyWith(
                    color: Theme.of(ctx).colorScheme.onBackground,
                  )),
          const SizedBox(
            height: 16,
          ),
          Text('Try selecting a different category!',
              style: Theme.of(ctx).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(ctx).colorScheme.onBackground,
                  ))
        ],
      ),
    );

    if (meals.isNotEmpty) {
      content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) => MealItem(
          meal: meals[index],
          onSelectMeal: (meal) {
            selectMeal(context, meal);
          },
        ),
      );
    }

    if (title == null) {
      return content;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content,
    );
  }
}
