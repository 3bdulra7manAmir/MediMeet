import 'dart:convert';
import 'package:flutter/services.dart';

import '../../model/filters_models/clinic_type.dart';


abstract class ClinicTypeLocalDataSource
{
  Future<List<ClinicTypeModel>> getClinicTypes();
}

class ClinicTypeLocalDataSourceImpl implements ClinicTypeLocalDataSource
{
  @override
  Future<List<ClinicTypeModel>> getClinicTypes() async
  {
    try
    {
      await Future.delayed(const Duration(seconds: 3));
      final String jsonString = await rootBundle.loadString('assets/jsons/filters/clinic_type.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> clinicTypeJson = jsonData['clinic_type'] ?? [];
      return clinicTypeJson.map((past) => ClinicTypeModel.fromJson(past)).toList();
    }
    catch (e)
    {
      throw Exception('Failed to load Clinic Type: $e');
    }
  }
}
