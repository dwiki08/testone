import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testone/domain/usecase/get_categories.dart';
import 'package:testone/domain/usecase/get_foods.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetFoodsUC _getFoodsUC;
  final GetCategoriesUC _getCategoriesUC;

  HomeCubit({
    required GetFoodsUC getFoodsUC,
    required GetCategoriesUC getCategoriesUC,
  }) : _getFoodsUC = getFoodsUC,
       _getCategoriesUC = getCategoriesUC,
       super(HomeState.initial());

}
