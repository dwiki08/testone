import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'dao/category_dao.dart';
import 'dao/food_dao.dart';
import 'tables/categories.dart';
import 'tables/foods.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Categories, Foods], daos: [CategoryDao, FoodDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

// Database connection helper
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'food.db'));

    if (!await file.exists()) {
      try {
        final data = await rootBundle.load('assets/food.db');
        List<int> bytes = data.buffer.asUint8List(
          data.offsetInBytes,
          data.lengthInBytes,
        );
        await file.writeAsBytes(bytes, flush: true);
      } catch (e) {
        throw Exception('Failed to copy database from assets');
      }
    }

    return NativeDatabase.createInBackground(file);
  });
}
