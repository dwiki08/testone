import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testone/domain/model/category.dart';
import 'package:testone/domain/model/food.dart';
import 'package:testone/domain/usecase/get_categories.dart';
import 'package:testone/domain/usecase/get_foods.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetFoodsUC _getFoodsUC;
  final GetCategoriesUC _getCategoriesUC;

  HomeCubit({
    required GetFoodsUC getFoodsUC,
    required GetCategoriesUC getCategoriesUC,
  }) : _getFoodsUC = getFoodsUC,
       _getCategoriesUC = getCategoriesUC,
       super(HomeState.initial());

  List<Category> _categories = [];

  Future<void> loadInitialData() async {
    emit(state.copyWith(isLoading: true));
    final List<Food> foods = await _getFoodsUC();
    final List<Category> categories = await _getCategoriesUC();
    _categories = categories;
    emit(
      state.copyWith(foods: foods, categories: categories, isLoading: false),
    );
  }

  Future<void> setSelectedCategory(Category category) async {
    emit(state.copyWith(isLoading: true));
    final foods = await _getFoodsUC.call(categoryId: category.id);
    emit(
      state.copyWith(
        foods: foods,
        categories: _categories,
        selectedCategory: category,
        isLoading: false,
      ),
    );
  }

  Future<void> resetSelectedCategory() async {
    emit(state.copyWith(isLoading: true));
    final foods = await _getFoodsUC();
    emit(
      state.copyWith(
        foods: foods,
        categories: _categories,
        selectedCategory: null,
        isLoading: false,
      ),
    );
  }
}
