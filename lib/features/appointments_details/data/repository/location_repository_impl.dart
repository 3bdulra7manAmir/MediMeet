import '../../domain/repository/location_repository.dart';
import '../datasources/location_local_data_source.dart';
import '../model/appointment_location.dart';

class LocationRepoImpl implements LocationRepository
{
  final LocationLocalDataSource localDataSource;
  const LocationRepoImpl({required this.localDataSource});

  @override
  Future<List<LocationModel>> getLocationDetails() async
  {
    try
    {
      return await localDataSource.getLocationDetails();
    }
    catch (e)
    {
      throw Exception('Failed to get Location: $e');
    }
  }


  

  
}