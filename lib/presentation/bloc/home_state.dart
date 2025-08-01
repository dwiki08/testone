import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testone/domain/model/category.dart';

import '../../domain/model/food.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<Food> foods,
    @Default([]) List<Category> categories,
    Category? selectedCategory,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState();
}
