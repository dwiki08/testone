import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/model/category.dart';
import '../../domain/model/food.dart';
import '../../provider/use_case_provider.dart';
import '../home_state.dart';

class HomeAsyncNotifier extends AsyncNotifier<HomeState> {
  @override
  Future<HomeState> build() async {
    return await _loadInitialData();
  }

  Future<HomeState> _loadInitialData() async {
    final results = await Future.wait([
      ref.read(getFoodsUCProvider).call(),
      ref.read(getCategoriesUCProvider).call(),
    ]);

    final foods = results[0] as List<Food>;
    final categories = results[1] as List<Category>;

    return HomeState(foodList: foods, categoryList: categories);
  }

  Future<void> setSelectedCategory(Category category) async {
    state = AsyncLoading<HomeState>().copyWithPrevious(state);

    final foods = await ref
        .read(getFoodsUCProvider)
        .call(categoryId: category.id);

    state = AsyncData(
      state.value!.copyWith(
        selectedCategory: category,
        foodList: foods,
        isLoading: false,
      ),
    );
  }

  Future<void> resetSelectedCategory() async {
    state = AsyncLoading<HomeState>().copyWithPrevious(state);

    final foods = await ref.read(getFoodsUCProvider).call();

    state = AsyncData(
      state.value!.copyWith(
        foodList: foods,
        selectedCategory: null,
        isLoading: false,
      ),
    );
  }

  Future<void> refresh() async {
    await _loadInitialData();
  }
}
