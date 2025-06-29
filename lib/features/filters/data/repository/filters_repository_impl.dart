import '../../domain/repository/filters_repository.dart';
import '../datasource/filters_local_data_source.dart';
import '../model/clinic_type.dart';
import '../model/insurance_provider.dart';
import '../model/location.dart';
import '../model/rating.dart';
import '../model/specialty.dart';

class FiltersRepositoryImpl implements FiltersRepository
{
  final FiltersLocalDataSource localDataSource;
  const FiltersRepositoryImpl({required this.localDataSource});

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

  @override
  Future<List<ClinicTypeModel>> getClinicTypes() async
  {
    try
    {
      return await localDataSource.getClinicTypes();
    }
    catch (e)
    {
      throw Exception('Failed to get Clinic Type: $e');
    }
  }

  @override
  Future<List<LocationFilterModel>> getLocations() async
  {
    try
    {
      return await localDataSource.getLocations();
    }
    catch (e)
    {
      throw Exception('Failed to get Clinic Type: $e');
    }
  }
  
  @override
  Future<List<RatingModel>> getRatings() async
  {
    try
    {
      return await localDataSource.getRatings();
    }
    catch (e)
    {
      throw Exception('Failed to get Clinic Type: $e');
    }
  }

  @override
  Future<List<SpecialtyModel>> getSpecialtys() async
  {
    try
    {
      return await localDataSource.getSpecialtys();
    }
    catch (e)
    {
      throw Exception('Failed to get Clinic Type: $e');
    }
  }
}