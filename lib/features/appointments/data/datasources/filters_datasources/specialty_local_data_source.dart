import 'dart:convert';
import 'package:flutter/services.dart';

import '../../model/filters_models/specialty.dart';


abstract class SpecialtyLocalDataSource
{
  Future<List<SpecialtyModel>> getSpecialtys();
}

class SpecialtyLocalDataSourceImpl implements SpecialtyLocalDataSource
{
  @override
  Future<List<SpecialtyModel>> getSpecialtys() async
  {
    try
    {
      await Future.delayed(const Duration(seconds: 1));
      final String jsonString = await rootBundle.loadString('assets/jsons/filters/specialty.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> specialtyJson = jsonData['specialty'] ?? [];
      return specialtyJson.map((specialty) => SpecialtyModel.fromJson(specialty)).toList();
    }
    catch (e)
    {
      throw Exception('Failed to load Specialty Filter: $e');
    }
  }
}
