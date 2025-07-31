import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/repository/food_repository.dart';
import 'data_source_provider.dart';

final foodRepositoryProvider = Provider<FoodRepository>((ref) {
  final database = ref.watch(appDatabaseProvider);
  return FoodRepositoryImpl(database);
});
