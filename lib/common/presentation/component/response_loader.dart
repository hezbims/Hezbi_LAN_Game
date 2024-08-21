import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/common/domain/model/response_wrapper.dart';
import 'package:hezbi_lan_game/common/presentation/component/my_default_retry_widget.dart';

class ResponseLoader<T> extends StatelessWidget {
  final ResponseWrapper<T>? response;
  final Widget Function(BuildContext context, T data) completeBuilder;
  final void Function() onRefresh;
  final Widget Function(BuildContext context)? loadingBuilder;
  final String Function(ResponseErrorType? errorType)? errorCodeToMessageTransformer;
  final Widget Function(BuildContext context, ResponseErrorType? errorType)? errorBuilder;
  
  const ResponseLoader({
    required this.response,
    required this.completeBuilder,
    required this.onRefresh,
    this.loadingBuilder,
    this.errorBuilder,
    this.errorCodeToMessageTransformer,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    final localErrorBuilder = errorBuilder;
    final localLoadingBuilder = loadingBuilder;
    final localResponse = response;
    final localErrorCodeToMessageTransformer = errorCodeToMessageTransformer;
    
    switch (localResponse) {
      case Succeed():
        return completeBuilder(context, localResponse.data);
      case Error():
        return localErrorBuilder != null ? 
          localErrorBuilder(context, localResponse.errorType) :
          MyDefaultRetryWidget(
            onRetry: onRefresh,
            errorText: localErrorCodeToMessageTransformer == null ?
              "Terjadi kesalahan tidak diketahui" :
              localErrorCodeToMessageTransformer(localResponse.errorType)
          );
      case Loading():
        return localLoadingBuilder != null ?
          localLoadingBuilder(context) :
          const CircularProgressIndicator();
      case null:
        return localLoadingBuilder != null ?
        localLoadingBuilder(context) :
        const CircularProgressIndicator();
    }
  }
}
