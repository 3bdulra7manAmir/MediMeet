import '../../domain/repository/appointments_details_repository.dart';
import '../datasources/appointments_details_local_data_source.dart';
import '../model/appointment_bill.dart';
import '../model/appointment_info.dart';
import '../model/appointment_location.dart';

class AppointmentsDetailsRepositoryImpl implements AppointmentsDetailsRepository
{
  final AppointmentsDetailsLocalDataSource localDataSource;
  const AppointmentsDetailsRepositoryImpl({required this.localDataSource});

  @override
  Future<List<BillingModel>> getBillingDetails() async
  {
    try
    {
      return await localDataSource.getBillingDetails();
    }
    catch (e)
    {
      throw Exception('Failed to get Billing: $e');
    }
  }

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