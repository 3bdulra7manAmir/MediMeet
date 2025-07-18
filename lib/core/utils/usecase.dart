import 'package:dartz/dartz.dart';

import '../services/network/api_fetch_failure.dart';

abstract class AppUsecase<Type, Param>
{
  Future<Either<ApiFetchFailure, Type>> call([Param? param]);
  //Future<Type> call([Param? param]);
}
