import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/common/presentation/routes/my_routes.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            FilledButton(
              onPressed: (){
                Navigator.of(context).pushNamed(MyRoutes.chooseNewGame);
              },
              child: const Text('Buat Room Baru')
            ),

            const SizedBox(height: 6,),

            FilledButton(
                onPressed: (){
                  Navigator.of(context).pushNamed(MyRoutes.daftarPermainan);
                },
                child: const Text('Join Permainan')
            ),
          ],
        ),
      ),
    );
  }
}