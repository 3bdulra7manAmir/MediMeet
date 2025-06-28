import '../../domain/repository/location_repository.dart';
import '../datasource/location_local_data_source.dart';
import '../model/location.dart';

class LocationFilterRepositoryImpl implements LocationFilterRepository
{
  final LocationFilterLocalDataSource localDataSource;
  const LocationFilterRepositoryImpl({required this.localDataSource});

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
}