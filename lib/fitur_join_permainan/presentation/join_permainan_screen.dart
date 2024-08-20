import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/common/presentation/routes/my_routes.dart';

class JoinPermainanScreen extends StatelessWidget {
  const JoinPermainanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Join Permainan'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 80, right: 24, left: 24,
        ),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(child:
                  Text(
                    'Daftar Permainan',
                    style: TextStyle(fontSize: 16),
                  )
                ),

                const Text('Scanning...', style: TextStyle(fontSize: 11),),

                const SizedBox(width: 8,),

                SizedBox.fromSize(
                  size: const Size.square(12),
                  child: const CircularProgressIndicator(strokeWidth: 1,)
                ),
              ],
            ),

            const SizedBox(height: 8,),

            Container(
              height: 1/2 * (MediaQuery.of(context).size.height),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 0.2),
              ),
              child: const Center(
                child: Text(
                  'Belum ada daftar permainan yang ditemukan',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              )
            ),

            const SizedBox(height: 12,),

            Row(
              children: [
                Expanded(
                  child: FilledButton(
                    onPressed: (){},
                    style: FilledButton.styleFrom(
                      minimumSize: const Size.fromHeight(56)
                    ),
                    child: const Text(
                      'Sambungkan\nIP & Port',
                      textAlign: TextAlign.center,
                    ),
                  )
                ),

                const SizedBox(width: 12,),

                Expanded(
                  child: FilledButton(
                    onPressed: ()  {
                      Navigator.of(context).pushNamed(
                        MyRoutes.scanQr
                      ).then((qrResult){
                        if (qrResult is String) {
                          Navigator.of(context).pushReplacementNamed(
                            MyRoutes.ticTacToeClientGameplay,
                            arguments: qrResult,
                          );
                        }
                      });

                    },
                    style: FilledButton.styleFrom(
                        minimumSize: const Size.fromHeight(56)
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Scan QR'),
                        SizedBox(width: 12,),
                        Icon(Icons.qr_code)
                      ],
                    ),
                  )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
