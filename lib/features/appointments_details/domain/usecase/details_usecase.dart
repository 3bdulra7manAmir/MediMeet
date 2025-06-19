import 'package:dartz/dartz.dart';
import 'package:medical_appointments/core/services/network/api_fetch_failure.dart';

import '../../../../core/utils/usecase.dart';
import '../repository/details_repository.dart';


class DetailsUsecase extends AppUsecase
{
  final Detailsepository detailsRepository;
  DetailsUsecase(this.detailsRepository);

  @override
  Future<Either<ApiFetchFailure, dynamic>> call([param]) async
  {
    try
    {
      final result = await detailsRepository.getAppointmentDetails();
      return Right(result);
    }
    catch (e)
    {
      return Left(ApiFetchFailure()); //message: e.toString()
    }
  }


}