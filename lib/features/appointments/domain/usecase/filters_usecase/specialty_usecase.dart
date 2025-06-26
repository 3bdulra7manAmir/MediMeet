import 'package:dartz/dartz.dart';

import '../../../../../core/services/network/api_fetch_failure.dart';
import '../../../../../core/utils/usecase.dart';
import '../../repository/filters_repo/specialty_repository.dart';


class SpecialtyUsecase extends AppUsecase
{
  final SpecialtyRepository specialtyRepository;
  SpecialtyUsecase(this.specialtyRepository);

  @override
  Future<Either<ApiFetchFailure, dynamic>> call([param]) async
  {
    try
    {
      final result = await specialtyRepository.getSpecialtys();
      return Right(result);
    }
    catch (e)
    {
      return Left(ApiFetchFailure()); //message: e.toString()
    }
  }
}