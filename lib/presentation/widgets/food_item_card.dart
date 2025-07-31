import 'package:flutter/material.dart';

import '../../domain/model/food.dart';

class FoodItemCard extends StatelessWidget {
  final Food food;

  const FoodItemCard({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.memory(
              food.photoImage,
              fit: BoxFit.cover,
              frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                if (wasSynchronouslyLoaded || frame != null) {
                  return child;
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.broken_image,
                  size: 48,
                  color: Colors.grey,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  food.name,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  food.priceInRupiah,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
