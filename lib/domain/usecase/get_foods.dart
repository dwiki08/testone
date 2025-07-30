import '../../data/repository/food_repository.dart';
import '../model/food.dart';

class GetFoodsUC {
  final FoodRepository _repository;

  GetFoodsUC(this._repository);

  Future<List<Food>> call({int? categoryId}) {
    return categoryId == null
        ? _repository.getAllFoods()
        : _repository.getFoodsByCategory(categoryId);
  }
}
