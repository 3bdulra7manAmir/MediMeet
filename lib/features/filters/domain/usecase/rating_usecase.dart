import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/model/rating.dart';
import '../repository/filters_repository.dart';

part 'rating_usecase.g.dart';

@riverpod
Future<List<RatingModel>> ratingUseCase(Ref ref) async
{
  try
  {
    return await ref.read(filtersRepositoryProvider).getRatings();
  }
  catch (e, stack)
  {
    log("Err is: $e And Stack is: $stack");
    return [RatingModel(id: "0", rateText: "NULL", rateValue: "0")];
  }
}
