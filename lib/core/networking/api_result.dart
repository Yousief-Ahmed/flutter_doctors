import 'package:flutter/foundation.dart';
import 'package:flutter_doctors/core/networking/api_error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_result.freezed.dart';
// dart run build_runner build --delete-conflicting-outputs

@Freezed()
abstract class ApiResult <T> with _$ApiResult <T> {
  const factory ApiResult.success(T data) = Success <T> ;
  const factory ApiResult.failure(ErrorHandler errorHandler) = Failure <T> ;
}