import '../../domain/repository/appointments_repository.dart';
import '../datasources/appointments_local_data_source.dart';
import '../model/past_appointments.dart';
import '../model/upcoming_appointments.dart';

class AppointmentsRepositoryImpl implements AppointmentsRepository
{
  final AppointmentsLocalDataSource localDataSource;
  const AppointmentsRepositoryImpl({required this.localDataSource});

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