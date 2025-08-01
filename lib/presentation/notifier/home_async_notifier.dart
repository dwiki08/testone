import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/usecase/get_categories.dart';
import '../../domain/usecase/get_foods.dart';
import 'home_state.dart';

final homeAsyncNotifierProvider =
    AsyncNotifierProvider<HomeAsyncNotifier, HomeState>(HomeAsyncNotifier.new);

class HomeAsyncNotifier extends AsyncNotifier<HomeState> {
  @override
  Future<HomeState> build() async {
    return await _loadInitialData();
  }

  Future<HomeState> _loadInitialData() async {
    ref.read(getFoodsUCProvider);
    ref.read(getCategoriesUCProvider);

    return HomeState();
  }
}
