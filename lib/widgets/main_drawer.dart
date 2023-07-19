import 'package:flutter/material.dart';

class MainDrwer extends StatelessWidget {
  const MainDrwer({super.key, required this.onSelectScreen});

  final void Function(String identifier) onSelectScreen;

  @override
  Widget build(BuildContext ctx) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(ctx).colorScheme.primary,
                  Theme.of(ctx).colorScheme.primary.withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.fastfood,
                  size: 48,
                  color: Theme.of(ctx).colorScheme.background,
                ),
                const SizedBox(
                  width: 18,
                ),
                Text('Cooking Up!',
                    style: Theme.of(ctx)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Theme.of(ctx).colorScheme.background))
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.restaurant,
              size: 26,
              color: Theme.of(ctx).colorScheme.onBackground,
            ),
            title: Text(
              'Meals',
              style: Theme.of(ctx).textTheme.titleSmall!.copyWith(
                    color: Theme.of(ctx).colorScheme.onBackground,
                    fontSize: 24,
                  ),
            ),
            onTap: () {
              onSelectScreen('meals');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 26,
              color: Theme.of(ctx).colorScheme.onBackground,
            ),
            title: Text(
              'Filters',
              style: Theme.of(ctx).textTheme.titleSmall!.copyWith(
                    color: Theme.of(ctx).colorScheme.onBackground,
                    fontSize: 24,
                  ),
            ),
            onTap: () {
              onSelectScreen('filters');
            },
          )
        ],
      ),
    );
  }
}
