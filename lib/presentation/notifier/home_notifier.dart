import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/usecase/get_categories.dart';
import '../../domain/usecase/get_foods.dart';
import 'home_state.dart';

final homeNotifierProvider = StateNotifierProvider<HomeNotifier, HomeState>((
  ref,
) {
  final getFoodsUC = ref.watch(getFoodsUCProvider);
  final getCategoriesUC = ref.watch(getCategoriesUCProvider);

  return HomeNotifier(
    getFoodsUC: getFoodsUC,
    getAllCategoriesUC: getCategoriesUC,
  );
});

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
    _getFoodsUC();
    _getAllCategoriesUC();

    state = HomeState();
  }
}
