import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/appointment_bill.dart';
import '../model/appointment_info.dart';
import '../model/appointment_location.dart';

part 'appointments_details_local_data_source.g.dart';


abstract class AppointmentsDetailsLocalDataSource
{
  Future<List<BillingModel>> getBillingDetails();
  Future<List<DetailsModel>> getAppointmentDetails();
  Future<List<LocationModel>> getLocationDetails();
}

@riverpod
AppointmentsDetailsLocalDataSource appointmentsDetailsLocalDataSource(Ref ref)
{
  return AppointmentsDetailsLocalDataSourceImpl();
}

class AppointmentsDetailsLocalDataSourceImpl implements AppointmentsDetailsLocalDataSource
{
  @override
  Future<List<BillingModel>> getBillingDetails() async
  {
    try
    {
      await Future.delayed(const Duration(seconds: 2));
      final String jsonString = await rootBundle.loadString('assets/jsons/appointments_details/bill.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> billingJson = jsonData['bill'] ?? [];
      return billingJson.map((billing) => BillingModel.fromJson(billing)).toList();
    }
    catch (e)
    {
      throw Exception('Failed to load bill: $e');
    }
  }

  @override
  Future<List<DetailsModel>> getAppointmentDetails() async
  {
    try
    {
      await Future.delayed(const Duration(seconds: 2));
      final String jsonString = await rootBundle.loadString('assets/jsons/appointments_details/info.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> detailsJson = jsonData['info'] ?? [];
      return detailsJson.map((details) => DetailsModel.fromJson(details)).toList();
    }
    catch (e)
    {
      throw Exception('Failed to load notifications: $e');
    }
  }

  @override
  Future<List<LocationModel>> getLocationDetails() async
  {
    try
    {
      await Future.delayed(const Duration(seconds: 2));
      final String jsonString = await rootBundle.loadString('assets/jsons/appointments_details/location.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> locationJson = jsonData['location'] ?? [];
      return locationJson.map((location) => LocationModel.fromJson(location)).toList();
    }
    catch (e)
    {
      throw Exception('Failed to load location: $e');
    }
  }

}
