import '../../domain/repository/upcoming_repository.dart';
import '../datasources/upcoming_local_data_source.dart';
import '../model/upcoming_appointments.dart';

class UpComingRepositoryImpl implements UpComingRepository
{
  final UpComingLocalDataSource localDataSource;
  const UpComingRepositoryImpl({required this.localDataSource});

  @override
  Future<List<UpComingModel>> getUpComingAppointments() async
  {
    try
    {
      return await localDataSource.getUpComingAppointments();
    }
    catch (e)
    {
      throw Exception('Failed to get notifications: $e');
    }
  }
}