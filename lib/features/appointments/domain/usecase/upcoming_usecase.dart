import 'package:dartz/dartz.dart';
import 'package:medical_appointments/core/services/network/api_fetch_failure.dart';

import '../../../../core/utils/usecase.dart';
import '../repository/upcoming_repository.dart';


class UpComingAppointmentUsecase extends AppUsecase
{
  final UpComingRepository upComingRepository;
  UpComingAppointmentUsecase(this.upComingRepository);

  @override
  Future<Either<ApiFetchFailure, dynamic>> call([param]) async
  {
    try
    {
      final result = await upComingRepository.getUpComingAppointments();
      return Right(result);
    }
    catch (e)
    {
      return Left(ApiFetchFailure()); //message: e.toString()
    }
  }
}