import '../../../data/model/filters_models/insurance_provider.dart';

abstract class InsuranceProviderRepository
{
  Future<List<InsuranceProviderModel>> getInsuranceProviders();
}