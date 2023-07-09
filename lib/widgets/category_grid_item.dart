import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({
    super.key,
    required this.category,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext ctx) {
    return InkWell(
      onTap: () {},
      splashColor: Theme.of(ctx).primaryColor,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.55),
              category.color.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          category.title,
          style: Theme.of(ctx).textTheme.titleLarge!.copyWith(
                color: Theme.of(ctx).colorScheme.onBackground,
              ),
        ),
      ),
    );
  }
}
