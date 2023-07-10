import 'package:flutter/material.dart';
import 'package:meals_app/models/meals.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    required this.title,
    required this.meals,
  });

  final String title;
  final List<Meal> meals;

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
        itemBuilder: (context, index) => Text(meals[index].title),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content,
    );
  }
}
