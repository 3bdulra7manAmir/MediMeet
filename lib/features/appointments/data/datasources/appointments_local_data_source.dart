import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/past_appointments.dart';
import '../model/upcoming_appointments.dart';

part 'appointments_local_data_source.g.dart';


abstract class AppointmentsLocalDataSource
{
  Future<List<PastModel>> getPastAppointments();
  Future<List<UpComingModel>> getUpComingAppointments();
}

@riverpod
AppointmentsLocalDataSource appointmentsLocalDataSource(Ref ref)
{
  return AppointmentsLocalDataSourceImpl();
}

class AppointmentsLocalDataSourceImpl implements AppointmentsLocalDataSource
{
  @override
  Future<List<PastModel>> getPastAppointments() async
  {
    try
    {
      await Future.delayed(const Duration(seconds: 2));
      final String jsonString = await rootBundle.loadString('assets/jsons/appointments/past_appointments.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> pastJson = jsonData['past'] ?? [];
      return pastJson.map((past) => PastModel.fromJson(past)).toList();
    }
    catch (e)
    {
      throw Exception('Failed to load past: $e');
    }
  }

  @override
  Future<List<UpComingModel>> getUpComingAppointments() async
  {
    try
    {
      await Future.delayed(const Duration(seconds: 2));
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
