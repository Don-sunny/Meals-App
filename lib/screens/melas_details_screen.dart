import 'package:flutter/material.dart';
import 'package:meals_app/models/meals.dart';

class MealsDetailsScreen extends StatelessWidget {
  const MealsDetailsScreen({
    super.key,
    required this.meal,
    required this.ontToggleFavorite,
  });

  final Meal meal;
  final void Function(Meal meal) ontToggleFavorite;

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
        appBar: AppBar(
          title: Text(meal.title),
          actions: [
            IconButton(
                onPressed: () {
                  ontToggleFavorite(meal);
                },
                icon: const Icon(Icons.star))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                meal.imageUrl,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                'Ingredients',
                style: Theme.of(ctx).textTheme.titleLarge!.copyWith(
                    color: Theme.of(ctx).colorScheme.primary,
                    fontWeight: FontWeight.bold),
              ),
              for (final ingredients in meal.ingredients)
                Text(
                  ingredients,
                  style: Theme.of(ctx).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(ctx).colorScheme.onBackground,
                      ),
                ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'steps',
                style: Theme.of(ctx).textTheme.titleLarge!.copyWith(
                    color: Theme.of(ctx).colorScheme.primary,
                    fontWeight: FontWeight.bold),
              ),
              for (final step in meal.steps)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Flexible(
                    child: Text(
                      step,
                      textAlign: TextAlign.center,
                      style: Theme.of(ctx).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(ctx).colorScheme.onBackground,
                          ),
                    ),
                  ),
                ),
            ],
          ),
        ));
  }
}
