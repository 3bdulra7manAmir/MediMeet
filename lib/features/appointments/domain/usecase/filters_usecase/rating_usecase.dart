import 'package:dartz/dartz.dart';

import '../../../../../core/services/network/api_fetch_failure.dart';
import '../../../../../core/utils/usecase.dart';
import '../../repository/filters_repo/rating_repository.dart';


class RatingUsecase extends AppUsecase
{
  final RatingRepository ratingRepository;
  RatingUsecase(this.ratingRepository);

  @override
  Future<Either<ApiFetchFailure, dynamic>> call([param]) async
  {
    try
    {
      final result = await ratingRepository.getRatings();
      return Right(result);
    }
    catch (e)
    {
      return Left(ApiFetchFailure()); //message: e.toString()
    }
  }

}