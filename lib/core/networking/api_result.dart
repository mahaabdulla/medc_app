import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medbok/core/networking/api_error_handler.dart';

part 'api_result.freezed.dart';
part 'api_result.g.dart';

// شبيه بالايذر

@Freezed(genericArgumentFactories: true)
class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.failure(ErrorHandler errorHandler) = Failure<T>;

  const ApiResult._(); // private constructor للـ Freezed

  factory ApiResult.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$ApiResultFromJson(json, fromJsonT);

  // Add toJson method for serialization
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return when(
      success: (data) => (this as Success<T>).toJson(toJsonT),
      failure: (error) => (this as Failure<T>).toJson(toJsonT),
    );
  }
}
