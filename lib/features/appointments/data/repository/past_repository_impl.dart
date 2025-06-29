import '../../domain/repository/past_repository.dart';
import '../datasources/past_local_data_source.dart';
import '../model/past_appointments.dart';

class PastRepositoryImpl implements PastRepository
{
  final PastLocalDataSource localDataSource;
  const PastRepositoryImpl({required this.localDataSource});

  @override
  Future<List<PastModel>> getPastAppointments() async
  {
    try
    {
      return await localDataSource.getPastAppointments();
    }
    catch (e)
    {
      throw Exception('Failed to get notifications: $e');
    }
  }
}