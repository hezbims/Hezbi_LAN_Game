import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/common/domain/response_wrapper.dart';

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
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 48,),
              
              const SizedBox(height: 8,),

              Text(
                localErrorCodeToMessageTransformer == null ?
                  "Terjadi kesalahan tidak diketahui" :
                  localErrorCodeToMessageTransformer(localResponse.errorType),
                textAlign: TextAlign.center,
              ),
              
              ElevatedButton(
                onPressed: onRefresh, 
                child: const Text('Retry'),
              ),
            ],
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
