import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_wrapper.freezed.dart';

@Freezed()
sealed class ResponseWrapper<T> with _$ResponseWrapper {
  factory ResponseWrapper.succeed(T data) = Succeed;
  factory ResponseWrapper.loading() = Loading;
  factory ResponseWrapper.error({String? message}) = Error;
}