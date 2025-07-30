import 'package:get_it/get_it.dart';

import '../data/db/app_database.dart';
import '../data/repository/food_repository.dart';
import '../domain/usecase/get_categories.dart';
import '../domain/usecase/get_foods.dart';
import '../presentation/home_provider.dart';

final locator = GetIt.instance;

void setupLocator() {
  // Data Sources
  locator.registerSingleton<AppDatabase>(AppDatabase());

  // Repositories
  locator.registerSingleton<FoodRepository>(
    FoodRepositoryImpl(locator<AppDatabase>()),
  );

  // Use Cases
  locator.registerSingleton<GetFoodsUC>(GetFoodsUC(locator<FoodRepository>()));
  locator.registerSingleton<GetCategoriesUC>(
    GetCategoriesUC(locator<FoodRepository>()),
  );

  // State Managements
  locator.registerFactory<HomeProvider>(
    () => HomeProvider(
      getFoodsUC: locator<GetFoodsUC>(),
      getAllCategoriesUC: locator<GetCategoriesUC>(),
    ),
  );
}
