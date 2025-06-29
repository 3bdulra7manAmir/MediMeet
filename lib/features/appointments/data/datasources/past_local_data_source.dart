import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/past_appointments.dart';

part 'past_local_data_source.g.dart';


abstract class PastLocalDataSource
{
  Future<List<PastModel>> getPastAppointments();
}

@riverpod
PastLocalDataSource pastLocalDataSource(Ref ref)
{
  return PastLocalDataSourceImpl();
}

class PastLocalDataSourceImpl implements PastLocalDataSource
{
  @override
  Future<List<PastModel>> getPastAppointments() async
  {
    try
    {
      await Future.delayed(const Duration(seconds: 3));
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
}
