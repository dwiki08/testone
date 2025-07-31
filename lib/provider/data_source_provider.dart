import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/db/app_database.dart';

final appDatabaseProvider = Provider<AppDatabase>((ref) {
  return AppDatabase();
});
