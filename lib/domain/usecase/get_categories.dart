import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repository/food_repository.dart';
import '../model/category.dart';

final getCategoriesUCProvider = Provider<GetCategoriesUC>((ref) {
  final repository = ref.watch(foodRepositoryProvider);
  return GetCategoriesUC(repository);
});

class GetCategoriesUC {
  final FoodRepository _repository;

  GetCategoriesUC(this._repository);

  Future<List<Category>> call() {
    return _repository.getAllCategories();
  }
}