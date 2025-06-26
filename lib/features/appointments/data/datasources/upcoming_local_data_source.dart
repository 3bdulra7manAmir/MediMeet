import 'dart:convert';
import 'package:flutter/services.dart';

import '../model/upcoming_appointments.dart';

abstract class UpComingLocalDataSource
{
  Future<List<UpComingModel>> getUpComingAppointments();
}

class UpComingLocalDataSourceImpl implements UpComingLocalDataSource
{
  @override
  Future<List<UpComingModel>> getUpComingAppointments() async
  {
    try
    {
      await Future.delayed(const Duration(seconds: 3));
      final String jsonString = await rootBundle.loadString('assets/jsons/appointments/upcoming_appointments.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> upComingJson = jsonData['upcoming'] ?? [];
      return upComingJson.map((upComing) => UpComingModel.fromJson(upComing)).toList();
    }
    catch (e)
    {
      throw Exception('Failed to load upcoming: $e');
    }
  }
}
