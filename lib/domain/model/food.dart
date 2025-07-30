import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'food.freezed.dart';

@freezed
abstract class Food with _$Food {
  const factory Food({
    required int id,
    required String name,
    required String description,
    required Uint8List photoImage,
    required int price,
    required String? category,
  }) = _Food;
}

extension FoodExtension on Food {
  static final _currencyFormatter = NumberFormat.currency(
    locale: 'id_ID',
    symbol: 'Rp ',
    decimalDigits: 0,
  );

  String get priceInRupiah => _currencyFormatter.format(price);
}
