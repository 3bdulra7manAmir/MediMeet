import 'package:dartz/dartz.dart';

import '../../../../core/services/network/api_fetch_failure.dart';
import '../../../../core/utils/usecase.dart';
import '../repository/info_repository.dart';


class DetailsUsecase extends AppUsecase
{
  final DetailsRepository detailsRepository;
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