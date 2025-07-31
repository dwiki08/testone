import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/model/category.dart';
import '../../domain/model/food.dart';
import '../../domain/usecase/get_categories.dart';
import '../../domain/usecase/get_foods.dart';
import '../../provider/use_case_provider.dart';
import '../home_state.dart';

class HomeAsyncNotifier extends AsyncNotifier<HomeState> {
  late GetFoodsUC _getFoodsUC;
  late GetCategoriesUC _getAllCategoriesUC;

  @override
  Future<HomeState> build() async {
    _getFoodsUC = ref.read(getFoodsUCProvider);
    _getAllCategoriesUC = ref.read(getCategoriesUCProvider);

    return await _loadInitialData();
  }

  Future<HomeState> _loadInitialData() async {
    final results = await Future.wait([
      _getFoodsUC.call(),
      _getAllCategoriesUC.call(),
    ]);

    final foods = results[0] as List<Food>;
    final categories = results[1] as List<Category>;

    return HomeState(foodList: foods, categoryList: categories);
  }

  Future<void> setSelectedCategory(Category category) async {
    state = AsyncLoading<HomeState>().copyWithPrevious(state);

    final foods = await _getFoodsUC.call(categoryId: category.id);

    state = AsyncData(
      state.value!.copyWith(
        selectedCategory: category,
        foodList: foods,
        isLoading: false,
      ),
    );
  }

  Future<void> resetSelectedCategory() async {
    state = const AsyncLoading();

    final foods = await _getFoodsUC.call();

    state = AsyncData(state.value!.copyWith(foodList: foods, selectedCategory: null, isLoading: false));
  }
}
