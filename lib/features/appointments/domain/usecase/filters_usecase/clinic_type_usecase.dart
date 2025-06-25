import 'package:dartz/dartz.dart';

import '../../../../../core/services/network/api_fetch_failure.dart';
import '../../../../../core/utils/usecase.dart';
import '../../repository/filters_repo/clinic_type_repository.dart';


class ClinicTypeUsecase extends AppUsecase
{
  final ClinicTypeRepository pastRepository;
  ClinicTypeUsecase(this.pastRepository);

  @override
  Future<Either<ApiFetchFailure, dynamic>> call([param]) async
  {
    try
    {
      final result = await pastRepository.getClinicTypes();
      return Right(result);
    }
    catch (e)
    {
      return Left(ApiFetchFailure()); //message: e.toString()
    }
  }


}