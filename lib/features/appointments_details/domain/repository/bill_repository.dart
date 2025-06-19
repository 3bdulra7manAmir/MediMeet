import '../../data/model/appointment_bill.dart';

abstract class BillingRepository
{
  Future<List<BillingModel>> getBillingDetails();
}