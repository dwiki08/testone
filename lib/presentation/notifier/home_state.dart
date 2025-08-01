import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/model/category.dart';
import '../../domain/model/food.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<Food> foodList,
    @Default([]) List<Category> categoryList,
    Category? selectedCategory,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _HomeState;
}
