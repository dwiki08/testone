import 'package:drift/drift.dart';

import '../app_database.dart';
import '../tables/categories.dart';
import '../tables/foods.dart';

part 'food_dao.g.dart';

@DriftAccessor(tables: [Foods, Categories])
class FoodDao extends DatabaseAccessor<AppDatabase> with _$FoodDaoMixin {
  FoodDao(super.db);

  Future<List<FoodWithCategoryEntity>> getAllFoods() {
    final query = select(foods).join([
      leftOuterJoin(categories, categories.id.equalsExp(foods.categoryId)),
    ]);

    return query.map((row) {
      return FoodWithCategoryEntity(
        food: row.readTable(foods),
        category: row.readTableOrNull(categories),
      );
    }).get();
  }

  Future<List<FoodWithCategoryEntity>> getFoodsByCategory(int categoryId) {
    final query = select(foods).join([
      leftOuterJoin(categories, categories.id.equalsExp(foods.categoryId)),
    ])..where(foods.categoryId.equals(categoryId));

    return query.map((row) {
      return FoodWithCategoryEntity(
        food: row.readTable(foods),
        category: row.readTableOrNull(categories),
      );
    }).get();
  }

  Future<int> insertFood(FoodsCompanion food) => into(foods).insert(food);

  Future<bool> updateFood(FoodEntity food) => update(foods).replace(food);

  Future<int> deleteFood(int id) =>
      (delete(foods)..where((tbl) => tbl.id.equals(id))).go();
}

class FoodWithCategoryEntity {
  final FoodEntity food;
  final CategoryEntity? category;

  FoodWithCategoryEntity({required this.food, this.category});
}
