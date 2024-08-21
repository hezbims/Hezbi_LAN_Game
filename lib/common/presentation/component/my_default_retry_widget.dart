import 'package:flutter/material.dart';

class MyDefaultRetryWidget extends StatelessWidget {
  final void Function() onRetry;
  final String errorText;
  const MyDefaultRetryWidget({
    required this.onRetry,
    required this.errorText,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(Icons.error_outline, size: 48,),

        const SizedBox(height: 8,),

        Text(
          errorText,
          textAlign: TextAlign.center,
        ),

        ElevatedButton(
          onPressed: onRetry,
          child: const Text('Retry'),
        ),
      ],
    );
  }
}
