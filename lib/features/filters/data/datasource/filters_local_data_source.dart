import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/clinic_type.dart';
import '../model/insurance_provider.dart';
import '../model/location.dart';
import '../model/rating.dart';
import '../model/specialty.dart';

part 'filters_local_data_source.g.dart';

abstract class FiltersLocalDataSource
{
  Future<List<ClinicTypeModel>> getClinicTypes();
  Future<List<InsuranceProviderModel>> getInsuranceProviders();
  Future<List<LocationFilterModel>> getLocations();
  Future<List<RatingModel>> getRatings();
  Future<List<SpecialtyModel>> getSpecialtys();
}

@riverpod
FiltersLocalDataSource filtersLocalDataSource(Ref ref)
{
  return FiltersLocalDataSourceImpl();
}

class FiltersLocalDataSourceImpl implements FiltersLocalDataSource
{
  @override
  Future<List<ClinicTypeModel>> getClinicTypes() async
  {
    try
    {
      await Future.delayed(const Duration(seconds: 1));
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

  @override
  Future<List<LocationFilterModel>> getLocations() async
  {
    try
    {
      await Future.delayed(const Duration(seconds: 1));
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

  @override
  Future<List<RatingModel>> getRatings() async
  {
    try
    {
      await Future.delayed(const Duration(seconds: 1));
      final String jsonString = await rootBundle.loadString('assets/jsons/filters/rating.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> ratingJson = jsonData['rate'] ?? [];
      return ratingJson.map((rating) => RatingModel.fromJson(rating)).toList();
    }
    catch (e)
    {
      throw Exception('Failed to load Rating Filter: $e');
    }
  }

  @override
  Future<List<SpecialtyModel>> getSpecialtys() async
  {
    try
    {
      await Future.delayed(const Duration(seconds: 1));
      final String jsonString = await rootBundle.loadString('assets/jsons/filters/specialty.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> specialtyJson = jsonData['specialty'] ?? [];
      return specialtyJson.map((specialty) => SpecialtyModel.fromJson(specialty)).toList();
    }
    catch (e)
    {
      throw Exception('Failed to load Specialty Filter: $e');
    }
  }
}
