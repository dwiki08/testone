import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testone/data/mapper/mapper.dart';

import '../../domain/model/category.dart';
import '../../domain/model/food.dart';
import '../db/app_database.dart';

final foodRepositoryProvider = Provider<FoodRepository>((ref) {
  final database = ref.watch(appDatabaseProvider);
  return FoodRepositoryImpl(database);
});

abstract class FoodRepository {
  Future<List<Food>> getAllFoods();

  Future<List<Food>> getFoodsByCategory(int categoryId);

  Future<List<Category>> getAllCategories();
}

class FoodRepositoryImpl implements FoodRepository {
  final AppDatabase _database;

  FoodRepositoryImpl(this._database);

  @override
  Future<List<Food>> getAllFoods() {
    return _database.foodDao.getAllFoods().then(
      (entities) => entities.map((i) => i.toModel()).toList(),
    );
  }

  @override
  Future<List<Food>> getFoodsByCategory(int categoryId) {
    return _database.foodDao
        .getFoodsByCategory(categoryId)
        .then((entities) => entities.map((i) => i.toModel()).toList());
  }

  @override
  Future<List<Category>> getAllCategories() {
    return _database.categoryDao.getAllCategories().then(
      (entities) => entities.map((i) => i.toModel()).toList(),
    );
  }
}
