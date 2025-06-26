import 'dart:convert';
import 'package:flutter/services.dart';

import '../../model/filters_models/insurance_provider.dart';


abstract class InsuranceProviderLocalDataSource
{
  Future<List<InsuranceProviderModel>> getInsuranceProviders();
}

class InsuranceProviderLocalDataSourceImpl implements InsuranceProviderLocalDataSource
{
  @override
  Future<List<InsuranceProviderModel>> getInsuranceProviders() async
  {
    try
    {
      await Future.delayed(const Duration(seconds: 1));
      final String jsonString = await rootBundle.loadString('assets/jsons/filters/insurance_provider.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> insuranceProviderJson = jsonData['insurance_provider'] ?? [];
      return insuranceProviderJson.map((insuranceProvider) => InsuranceProviderModel.fromJson(insuranceProvider)).toList();
    }
    catch (e)
    {
      throw Exception('Failed to load Insurance Provider: $e');
    }
  }
}
