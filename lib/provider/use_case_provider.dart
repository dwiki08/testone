import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testone/provider/repository_provider.dart';

import '../domain/usecase/get_categories.dart';
import '../domain/usecase/get_foods.dart';

final getFoodsUCProvider = Provider<GetFoodsUC>((ref) {
  final repository = ref.watch(foodRepositoryProvider);
  return GetFoodsUC(repository);
});

final getCategoriesUCProvider = Provider<GetCategoriesUC>((ref) {
  final repository = ref.watch(foodRepositoryProvider);
  return GetCategoriesUC(repository);
});
