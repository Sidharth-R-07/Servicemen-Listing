import 'package:dartz/dartz.dart';
import 'package:servicemen_listing/core/utils/failures/failures.dart';

//GETTING FUTURE RESULT
typedef FutureResult<T> = Future<Either<MainFailure, T>>;

//FAILURE OR SUCCESS
typedef FailureOrSuccess<T> = Either<MainFailure, T>;
