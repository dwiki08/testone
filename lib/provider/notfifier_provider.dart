import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testone/provider/use_case_provider.dart';

import '../presentation/home_state.dart';
import '../presentation/notifier/home_async_notifier.dart';
import '../presentation/notifier/home_notifier.dart';

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

final homeAsyncNotifierProvider =
    AsyncNotifierProvider<HomeAsyncNotifier, HomeState>(HomeAsyncNotifier.new);
