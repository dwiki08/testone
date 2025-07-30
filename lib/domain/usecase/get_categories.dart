import '../../data/repository/food_repository.dart';
import '../model/category.dart';

class GetCategoriesUC {
  final FoodRepository _repository;

  GetCategoriesUC(this._repository);

  Future<List<Category>> call() {
    return _repository.getAllCategories();
  }
}
