import '../../domain/repository/info_repository.dart';
import '../datasources/info_local_data_source.dart';
import '../model/appointment_info.dart';

class DetailsRepoImpl implements DetailsRepository
{
  final DetailsLocalDataSource localDataSource;
  const DetailsRepoImpl({required this.localDataSource});

  @override
  Future<List<DetailsModel>> getAppointmentDetails() async
  {
    try
    {
      return await localDataSource.getAppointmentDetails();
    }
    catch (e)
    {
      throw Exception('Failed to get Details: $e');
    }
  }


  

  
}