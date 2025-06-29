import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/appointments_details_local_data_source.dart';
import '../../data/model/appointment_bill.dart';
import '../../data/model/appointment_info.dart';
import '../../data/model/appointment_location.dart';
import '../../data/repository/appointments_details_repository_impl.dart';

part 'appointments_details_repository.g.dart';


abstract class AppointmentsDetailsRepository
{
  Future<List<BillingModel>> getBillingDetails();
  Future<List<DetailsModel>> getAppointmentDetails();
  Future<List<LocationModel>> getLocationDetails();
}

@riverpod
AppointmentsDetailsRepository appointmentsDetailsRepository(Ref ref)
{
  return AppointmentsDetailsRepositoryImpl(
    localDataSource: ref.read(appointmentsDetailsLocalDataSourceProvider),
  );
}