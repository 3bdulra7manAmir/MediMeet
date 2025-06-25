import '../../../domain/repository/filters_repo/insurance_provider_repository.dart';
import '../../datasources/filters_datasources/insurance_provider_local_data_source.dart';
import '../../model/filters_models/insurance_provider.dart';

class InsuranceProviderRepositoryImpl implements InsuranceProviderRepository
{
  final InsuranceProviderLocalDataSource localDataSource;
  const InsuranceProviderRepositoryImpl({required this.localDataSource});

  @override
  Future<List<InsuranceProviderModel>> getInsuranceProviders() async
  {
    try
    {
      return await localDataSource.getInsuranceProviders();
    }
    catch (e)
    {
      throw Exception('Failed to get Insurance Provider: $e');
    }
  }


  

  
}