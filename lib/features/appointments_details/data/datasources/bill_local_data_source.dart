import 'dart:convert';
import 'package:flutter/services.dart';

import '../model/appointment_bill.dart';

abstract class BillingLocalDataSource
{
  Future<List<BillingModel>> getBillingDetails();
}

class BillingLocalDataSourceImpl implements BillingLocalDataSource
{
  @override
  Future<List<BillingModel>> getBillingDetails() async
  {
    try
    {
      await Future.delayed(const Duration(seconds: 3));
      final String jsonString = await rootBundle.loadString('assets/json/.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> billingJson = jsonData[''] ?? [];
      return billingJson.map((billing) => BillingModel.fromJson(billing)).toList();
    }
    catch (e)
    {
      throw Exception('Failed to load notifications: $e');
    }
  }

}
