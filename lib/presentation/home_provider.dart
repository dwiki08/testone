import 'package:flutter/material.dart';
import 'package:testone/domain/model/category.dart';
import 'package:testone/domain/model/food.dart';

import '../domain/usecase/get_categories.dart';
import '../domain/usecase/get_foods.dart';

class HomeProvider extends ChangeNotifier {
  final GetFoodsUC _getFoodsUC;
  final GetCategoriesUC _getAllCategoriesUC;

  HomeProvider({
    required GetFoodsUC getFoodsUC,
    required GetCategoriesUC getAllCategoriesUC,
  }) : _getFoodsUC = getFoodsUC,
       _getAllCategoriesUC = getAllCategoriesUC;

  final List<Food> _foodList = [];

  List<Food> get foodList => _foodList;

  final List<Category> _categoryList = [];

  List<Category> get categoryList => _categoryList;

  Category? _selectedCategory;

  Category? get selectedCategory => _selectedCategory;

  Future<void> initData() async {
    final foods = await _getFoodsUC.call();
    final categories = await _getAllCategoriesUC.call();
    _foodList.addAll(foods);
    _categoryList.addAll(categories);
    notifyListeners();
  }

  void setSelectedCategory(Category category) {
    _selectedCategory = category;
    _filterFoodsByCategory(category.id);
    notifyListeners();
  }

  void resetSelectedCategory() {
    _selectedCategory = null;
    notifyListeners();
  }

  Future<void> _filterFoodsByCategory(int? categoryId) async {
    final foods = await _getFoodsUC.call(categoryId: categoryId);
    _foodList.clear();
    _foodList.addAll(foods);
    notifyListeners();
  }
}
