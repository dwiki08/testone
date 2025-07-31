import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testone/presentation/widgets/food_item_card.dart';
import 'package:testone/provider/notfifier_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeAsyncNotifierProvider);

    return homeState.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (error, stackTrace) =>
          Scaffold(body: Center(child: Text('Terjadi kesalahan: $error'))),
      data: (state) {
        return Scaffold(
          appBar: AppBar(title: const Text('Foods'), centerTitle: false),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 16.0,
                ),
                child: Row(
                  children: state.categoryList.map((category) {
                    final isSelected = state.selectedCategory == category;
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ChoiceChip(
                        label: Text(category.name),
                        selected: isSelected,
                        showCheckmark: false,
                        onSelected: (selected) {
                          final notifier = ref.read(
                            homeAsyncNotifierProvider.notifier,
                          );
                          if (selected) {
                            notifier.setSelectedCategory(category);
                          } else {
                            notifier.resetSelectedCategory();
                          }
                        },
                        selectedColor: Theme.of(context).primaryColor,
                        labelStyle: TextStyle(
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(8.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: state.foodList.length,
                  itemBuilder: (context, index) {
                    final food = state.foodList[index];
                    return FoodItemCard(food: food);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
