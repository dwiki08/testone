// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeState {

  List<Food> get foods;

  List<Category> get categories;

  Category? get selectedCategory;

  bool get isLoading;

  bool get isRefreshing;

  String? get errorMessage;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeStateCopyWith<HomeState> get copyWith =>
      _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeState &&
            const DeepCollectionEquality().equals(other.foods, foods) &&
            const DeepCollectionEquality().equals(
                other.categories, categories) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isRefreshing, isRefreshing) ||
                other.isRefreshing == isRefreshing) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }


  @override
  int get hashCode =>
      Object.hash(
          runtimeType,
          const DeepCollectionEquality().hash(foods),
          const DeepCollectionEquality().hash(categories),
          selectedCategory,
          isLoading,
          isRefreshing,
          errorMessage);

  @override
  String toString() {
    return 'HomeState(foods: $foods, categories: $categories, selectedCategory: $selectedCategory, isLoading: $isLoading, isRefreshing: $isRefreshing, errorMessage: $errorMessage)';
  }


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value,
      $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;

  @useResult
  $Res call({
    List<Food> foods, List<
        Category> categories, Category? selectedCategory, bool isLoading, bool isRefreshing, String? errorMessage
  });


  $CategoryCopyWith<$Res>? get selectedCategory;

}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call(
      {Object? foods = null, Object? categories = null, Object? selectedCategory = freezed, Object? isLoading = null, Object? isRefreshing = null, Object? errorMessage = freezed,}) {
    return _then(_self.copyWith(
      foods: null == foods
          ? _self.foods
          : foods // ignore: cast_nullable_to_non_nullable
      as List<Food>,
      categories: null == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
      as List<Category>,
      selectedCategory: freezed == selectedCategory
          ? _self.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
      as Category?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
      as bool,
      isRefreshing: null == isRefreshing
          ? _self.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
      as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String?,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get selectedCategory {
    if (_self.selectedCategory == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_self.selectedCategory!, (value) {
      return _then(_self.copyWith(selectedCategory: value));
    });
  }
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs TResult maybeMap

  <

  TResult

  extends

  Object?

  >

  (

  TResult Function( _HomeState value)? $default,{required TResult orElse(),}){
  final _that = this;
  switch (_that) {
  case _HomeState() when $default != null:
  return $default(_that);case _:
  return orElse();

  }
  }
  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value) $default,){
  final _that = this;
  switch (_that) {
  case _HomeState():
  return $default(_that);case _:
  throw StateError('Unexpected subclass');

  }
  }
  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)? $default,){
  final _that = this;
  switch (_that) {
  case _HomeState() when $default != null:
  return $default(_that);case _:
  return null;

  }
  }
  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Food> foods, List<Category> categories, Category? selectedCategory, bool isLoading, bool isRefreshing, String? errorMessage)? $default,{required TResult orElse(),}) {final _that = this;
  switch (_that) {
  case _HomeState() when $default != null:
  return $default(_that.foods,_that.categories,_that.selectedCategory,_that.isLoading,_that.isRefreshing,_that.errorMessage);case _:
  return orElse();

  }
  }
  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Food> foods, List<Category> categories, Category? selectedCategory, bool isLoading, bool isRefreshing, String? errorMessage) $default,) {final _that = this;
  switch (_that) {
  case _HomeState():
  return $default(_that.foods,_that.categories,_that.selectedCategory,_that.isLoading,_that.isRefreshing,_that.errorMessage);case _:
  throw StateError('Unexpected subclass');

  }
  }
  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Food> foods, List<Category> categories, Category? selectedCategory, bool isLoading, bool isRefreshing, String? errorMessage)? $default,) {final _that = this;
  switch (_that) {
  case _HomeState() when $default != null:
  return $default(_that.foods,_that.categories,_that.selectedCategory,_that.isLoading,_that.isRefreshing,_that.errorMessage);case _:
  return null;

  }
  }

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({final List<Food> foods = const [], final List<
      Category> categories = const [
  ], this.selectedCategory, this.isLoading = false, this.isRefreshing = false, this.errorMessage})
      : _foods = foods,
        _categories = categories;


  final List<Food> _foods;

  @override
  @JsonKey()
  List<Food> get foods {
    if (_foods is EqualUnmodifiableListView) return _foods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foods);
  }

  final List<Category> _categories;

  @override
  @JsonKey()
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override final Category? selectedCategory;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isRefreshing;
  @override final String? errorMessage;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _HomeState &&
            const DeepCollectionEquality().equals(other._foods, _foods) &&
            const DeepCollectionEquality().equals(
                other._categories, _categories) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isRefreshing, isRefreshing) ||
                other.isRefreshing == isRefreshing) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }


  @override
  int get hashCode =>
      Object.hash(
          runtimeType,
          const DeepCollectionEquality().hash(_foods),
          const DeepCollectionEquality().hash(_categories),
          selectedCategory,
          isLoading,
          isRefreshing,
          errorMessage);

  @override
  String toString() {
    return 'HomeState(foods: $foods, categories: $categories, selectedCategory: $selectedCategory, isLoading: $isLoading, isRefreshing: $isRefreshing, errorMessage: $errorMessage)';
  }


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value,
      $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;

  @override
  @useResult
  $Res call({
    List<Food> foods, List<
        Category> categories, Category? selectedCategory, bool isLoading, bool isRefreshing, String? errorMessage
  });


  @override $CategoryCopyWith<$Res>? get selectedCategory;

}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call(
      {Object? foods = null, Object? categories = null, Object? selectedCategory = freezed, Object? isLoading = null, Object? isRefreshing = null, Object? errorMessage = freezed,}) {
    return _then(_HomeState(
      foods: null == foods
          ? _self._foods
          : foods // ignore: cast_nullable_to_non_nullable
      as List<Food>,
      categories: null == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
      as List<Category>,
      selectedCategory: freezed == selectedCategory
          ? _self.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
      as Category?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
      as bool,
      isRefreshing: null == isRefreshing
          ? _self.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
      as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String?,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get selectedCategory {
    if (_self.selectedCategory == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_self.selectedCategory!, (value) {
      return _then(_self.copyWith(selectedCategory: value));
    });
  }
}

// dart format on
