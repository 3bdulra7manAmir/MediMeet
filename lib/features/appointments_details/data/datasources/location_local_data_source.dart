import 'dart:convert';
import 'package:flutter/services.dart';

import '../model/appointment_location.dart';

abstract class LocationLocalDataSource
{
  Future<List<LocationModel>> getLocationDetails();
}

class LocationLocalDataSourceImpl implements LocationLocalDataSource
{
  @override
  Future<List<LocationModel>> getLocationDetails() async
  {
    try
    {
      await Future.delayed(const Duration(seconds: 3));
      final String jsonString = await rootBundle.loadString('assets/json/.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> locationJson = jsonData[''] ?? [];
      return locationJson.map((location) => LocationModel.fromJson(location)).toList();
    }
    catch (e)
    {
      throw Exception('Failed to load notifications: $e');
    }
  }

}
