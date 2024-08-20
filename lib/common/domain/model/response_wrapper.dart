import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_wrapper.freezed.dart';

@Freezed()
sealed class ResponseWrapper<T> with _$ResponseWrapper {
  const ResponseWrapper._();
  factory ResponseWrapper.succeed(T data) = Succeed;
  factory ResponseWrapper.loading() = Loading;
  factory ResponseWrapper.error({ResponseErrorType? errorType}) = Error;

  Succeed<T> asSucceed() => this as Succeed<T>;
}

abstract class ResponseErrorType {}