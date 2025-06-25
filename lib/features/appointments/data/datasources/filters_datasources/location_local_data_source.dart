import 'dart:convert';
import 'package:flutter/services.dart';

import '../../model/filters_models/location.dart';



abstract class LocationFilterLocalDataSource
{
  Future<List<LocationFilterModel>> getLocations();
}

class LocationFilterLocalDataSourceImpl implements LocationFilterLocalDataSource
{
  @override
  Future<List<LocationFilterModel>> getLocations() async
  {
    try
    {
      await Future.delayed(const Duration(seconds: 3));
      final String jsonString = await rootBundle.loadString('assets/jsons/filters/location.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> locationJson = jsonData['location'] ?? [];
      return locationJson.map((location) => LocationFilterModel.fromJson(location)).toList();
    }
    catch (e)
    {
      throw Exception('Failed to load Location Filter: $e');
    }
  }

}
