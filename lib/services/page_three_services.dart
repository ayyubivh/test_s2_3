import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getx_stateapp/model/food_model.dart';

class PageThreeService {
  Future<List<String>?> getFoodItems() async {
    try {
      final String jsonString =
          await rootBundle.loadString('assets/json/page3.json');

      final Map<String, dynamic> jsonData = json.decode(jsonString);

      final FoodData foodData = FoodData.fromJson(jsonData);

      return foodData.page3;
    } catch (e) {
      debugPrint('Error fetching data: $e');
    }
    return null;
  }
}
