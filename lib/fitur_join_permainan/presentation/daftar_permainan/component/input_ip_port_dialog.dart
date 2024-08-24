import 'package:flutter/material.dart';

class InputIpPortDialog extends StatefulWidget {
  const InputIpPortDialog({super.key});

  @override
  State<InputIpPortDialog> createState() => _InputIpPortDialogState();
}

class _InputIpPortDialogState extends State<InputIpPortDialog> {
  final textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 24, right: 24, left: 24, bottom: 8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: textController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Contoh : 192.168.1.200:38291',
                labelText: 'IP & Port',
                hintStyle: TextStyle(fontSize: 12),
              ),
              style: const TextStyle(fontSize: 12),
              autofocus: true,
            ),

            const SizedBox(height: 8,),

            FilledButton(
              onPressed: (){
                Navigator.of(context).pop(textController.text);
              },
              child: const Text('Masuk')
            ),
          ],
        ),
      ),
    );
  }
}

Future<String?> showInputIpPortDialog(BuildContext context) async {
  final result = await showGeneralDialog(
    context: context,
    pageBuilder: (context, animation, secondaryAnimation){
      return const InputIpPortDialog();
    },
    barrierDismissible: true,
    barrierLabel: 'Kembali',
    transitionDuration: const Duration(milliseconds: 200),
    transitionBuilder: (context, animation, secondaryAnimation, child){
      return ScaleTransition(
        scale: animation,
        child: child,
      );
    }
  );
  if (result is String){
    return result;
  }
  return null;
}