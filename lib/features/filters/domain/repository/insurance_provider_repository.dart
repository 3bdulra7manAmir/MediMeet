import '../../data/model/insurance_provider.dart';

abstract class InsuranceProviderRepository
{
  Future<List<InsuranceProviderModel>> getInsuranceProviders();
}