import 'package:drift/drift.dart';

import 'categories.dart';

@DataClassName('FoodEntity')
class Foods extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text().withLength(min: 1, max: 100)();

  TextColumn get description => text().withLength(min: 1, max: 500)();

  TextColumn get photo => text()();

  IntColumn get price => integer()();

  IntColumn get categoryId =>
      integer().references(Categories, #id).nullable().named("categoryId")();
}
