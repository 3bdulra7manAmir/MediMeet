import '../../domain/repository/bill_repository.dart';
import '../datasources/bill_local_data_source.dart';
import '../model/appointment_bill.dart';

class BillingRepoImpl implements BillingRepository
{
  final BillingLocalDataSource localDataSource;
  const BillingRepoImpl({required this.localDataSource});

  @override
  Future<List<BillingModel>> getBillingDetails() async
  {
    try
    {
      return await localDataSource.getBillingDetails();
    }
    catch (e)
    {
      throw Exception('Failed to get Billing: $e');
    }
  }


  

  
}