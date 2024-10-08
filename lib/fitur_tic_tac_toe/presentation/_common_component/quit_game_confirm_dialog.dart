import 'package:flutter/material.dart';

class QuitGameConfirmDialog extends StatelessWidget {
  const QuitGameConfirmDialog({super.key});

  @override
  Widget build(BuildContext context) {
    const paddingSize = 16.0;
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.only(
          top: paddingSize, left: paddingSize, right: paddingSize,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Apakah anda yakin ingin keluar dari permainan?'),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){
                    Navigator.of(context).pop(false);
                  },
                  child: const Text('Tidak')
                ),

                TextButton(
                    onPressed: (){
                      Navigator.of(context).pop(true);
                    },
                    child: const Text('Ya')
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
