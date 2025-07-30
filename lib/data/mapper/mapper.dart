import 'dart:convert';
import 'dart:typed_data';

import 'package:testone/data/db/dao/food_dao.dart';

import '../../domain/model/category.dart';
import '../../domain/model/food.dart';
import '../db/app_database.dart';

Uint8List _base64ImageToUint8List(String base64Image) {
  final cleanedBase64 = base64Image.contains(',')
      ? base64Image.split(',')[1]
      : base64Image;
  return base64Decode(cleanedBase64);
}

extension CategoryEntityMapper on CategoryEntity {
  Category toModel() {
    return Category(id: id, name: name);
  }
}

extension FoodWithCategoryEntityMapper on FoodWithCategoryEntity {
  Food toModel() {
    return Food(
      id: food.id,
      name: food.name,
      description: food.description,
      photoImage: _base64ImageToUint8List(food.photo),
      price: food.price,
      category: category?.name,
    );
  }
}
