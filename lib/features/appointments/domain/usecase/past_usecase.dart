import 'package:dartz/dartz.dart';
import 'package:medical_appointments/core/services/network/api_fetch_failure.dart';

import '../../../../core/utils/usecase.dart';
import '../repository/past_repository.dart';


class PastAppointmentUsecase extends AppUsecase
{
  final PastRepository pastRepository;
  PastAppointmentUsecase(this.pastRepository);

  @override
  Future<Either<ApiFetchFailure, dynamic>> call([param]) async
  {
    try
    {
      final result = await pastRepository.getPastAppointments();
      return Right(result);
    }
    catch (e)
    {
      return Left(ApiFetchFailure()); //message: e.toString()
    }
  }


}