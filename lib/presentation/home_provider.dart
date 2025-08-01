import 'package:flutter/material.dart';

import '../domain/usecase/get_categories.dart';
import '../domain/usecase/get_foods.dart';

class HomeProvider extends ChangeNotifier {
  final GetFoodsUC _getFoodsUC;
  final GetCategoriesUC _getAllCategoriesUC;

  HomeProvider({
    required GetFoodsUC getFoodsUC,
    required GetCategoriesUC getAllCategoriesUC,
  }) : _getFoodsUC = getFoodsUC,
       _getAllCategoriesUC = getAllCategoriesUC;


}
