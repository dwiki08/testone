import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repository/food_repository.dart';
import '../model/food.dart';

final getFoodsUCProvider = Provider<GetFoodsUC>((ref) {
  final repository = ref.watch(foodRepositoryProvider);
  return GetFoodsUC(repository);
});

class GetFoodsUC {
  final FoodRepository _repository;

  GetFoodsUC(this._repository);

  Future<List<Food>> call({int? categoryId}) {
    return categoryId == null
        ? _repository.getAllFoods()
        : _repository.getFoodsByCategory(categoryId);
  }
}
