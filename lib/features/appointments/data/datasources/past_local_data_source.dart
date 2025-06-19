import 'dart:convert';
import 'package:flutter/services.dart';

import '../model/past_appointments.dart';

abstract class PastLocalDataSource
{
  Future<List<PastModel>> getPastAppointments();
}

class PastLocalDataSourceImpl implements PastLocalDataSource
{
  @override
  Future<List<PastModel>> getPastAppointments() async
  {
    try
    {
      await Future.delayed(const Duration(seconds: 3));
      final String jsonString = await rootBundle.loadString('assets/json/.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> pastJson = jsonData[''] ?? [];
      return pastJson.map((past) => PastModel.fromJson(past)).toList();
    }
    catch (e)
    {
      throw Exception('Failed to load notifications: $e');
    }
  }

}
