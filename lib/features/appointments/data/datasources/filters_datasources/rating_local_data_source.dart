import 'dart:convert';
import 'package:flutter/services.dart';

import '../../model/filters_models/rating.dart';


abstract class RatingLocalDataSource
{
  Future<List<RatingModel>> getRatings();
}

class RatingLocalDataSourceImpl implements RatingLocalDataSource
{
  @override
  Future<List<RatingModel>> getRatings() async
  {
    try
    {
      await Future.delayed(const Duration(seconds: 1));
      final String jsonString = await rootBundle.loadString('assets/jsons/filters/rating.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> ratingJson = jsonData['rate'] ?? [];
      return ratingJson.map((rating) => RatingModel.fromJson(rating)).toList();
    }
    catch (e)
    {
      throw Exception('Failed to load Rating Filter: $e');
    }
  }
}
