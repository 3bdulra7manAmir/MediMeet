import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/upcoming_appointments.dart';

part 'upcoming_local_data_source.g.dart';

abstract class UpComingLocalDataSource
{
  Future<List<UpComingModel>> getUpComingAppointments();
}

@riverpod
UpComingLocalDataSource upComingLocalDataSource(Ref ref)
{
  return UpComingLocalDataSourceImpl();
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
