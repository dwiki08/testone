import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testone/domain/model/category.dart';
import 'package:testone/domain/model/food.dart';

import '../../domain/usecase/get_categories.dart';
import '../../domain/usecase/get_foods.dart';
import '../home_state.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  final GetFoodsUC _getFoodsUC;
  final GetCategoriesUC _getAllCategoriesUC;

  HomeNotifier({
    required GetFoodsUC getFoodsUC,
    required GetCategoriesUC getAllCategoriesUC,
  }) : _getFoodsUC = getFoodsUC,
       _getAllCategoriesUC = getAllCategoriesUC,
       super(const HomeState()) {
    _loadInitialData();
  }

  Future<void> _loadInitialData() async {
    try {
      state = HomeState(isLoading: true);

      final results = await Future.wait([
        _getFoodsUC.call(),
        _getAllCategoriesUC.call(),
      ]);

      final foods = results[0] as List<Food>;
      final categories = results[1] as List<Category>;

      state = state.copyWith(
        foodList: foods,
        categoryList: categories,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> setSelectedCategory(Category category) async {
    try {
      state = state.copyWith(
        selectedCategory: category,
        isLoading: true,
        errorMessage: null,
      );

      await _filterFoodsByCategory(category.id);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> resetSelectedCategory() async {
    try {
      state = state.copyWith(
        selectedCategory: null,
        isLoading: true,
        errorMessage: null,
      );

      final foods = await _getFoodsUC.call();

      state = state.copyWith(foodList: foods, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> _filterFoodsByCategory(int? categoryId) async {
    final foods = await _getFoodsUC.call(categoryId: categoryId);

    state = state.copyWith(foodList: foods, isLoading: false);
  }

  Future<void> refresh() async {
    await _loadInitialData();
  }
}
