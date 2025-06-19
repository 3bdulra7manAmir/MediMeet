
import '../../domain/repository/details_repository.dart';
import '../datasources/local_data_source.dart';
import '../model/details_model.dart';

class DetailsRepoImpl implements Detailsepository
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
      throw Exception('Failed to get notifications: $e');
    }
  }


  

  
}