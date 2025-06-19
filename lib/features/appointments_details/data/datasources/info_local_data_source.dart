import 'dart:convert';
import 'package:flutter/services.dart';

import '../model/appointment_info.dart';

abstract class DetailsLocalDataSource
{
  Future<List<DetailsModel>> getAppointmentDetails();
}

class DetailsLocalDataSourceImpl implements DetailsLocalDataSource
{
  @override
  Future<List<DetailsModel>> getAppointmentDetails() async
  {
    try
    {
      await Future.delayed(const Duration(seconds: 3));
      final String jsonString = await rootBundle.loadString('assets/json/.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> detailsJson = jsonData[''] ?? [];
      return detailsJson.map((details) => DetailsModel.fromJson(details)).toList();
    }
    catch (e)
    {
      throw Exception('Failed to load notifications: $e');
    }
  }

}
