import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hezbi_lan_game/common/domain/model/my_game_type.dart';
import 'package:hezbi_lan_game/common/domain/model/qr_game_model.dart';
import 'package:hezbi_lan_game/common/presentation/routes/my_routes.dart';
import 'package:hezbi_lan_game/fitur_join_permainan/presentation/daftar_permainan/component/list_daftar_permainan.dart';
import 'package:hezbi_lan_game/fitur_join_permainan/presentation/daftar_permainan/daftar_permainan_view_model.dart';

class DaftarPermainanScreen extends StatelessWidget {
  const DaftarPermainanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DaftarPermainanViewModel(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Join Permainan'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 80, right: 24, left: 24,
          ),
          child: BlocBuilder<DaftarPermainanViewModel, DaftarPermainanState>(
            builder: (context, state) {
              return Column(
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

                      if (state.serviceDiscoveryStartupStatus.isSucceed()) ...[
                        const Text('Scanning...', style: TextStyle(fontSize: 11),),

                        const SizedBox(width: 8,),

                        SizedBox.fromSize(
                          size: const Size.square(12),
                          child: const CircularProgressIndicator(strokeWidth: 1,)
                        ),
                      ]
                      else if (state.serviceDiscoveryStartupStatus.isLoading())
                        const Text('Menyiapkan scanner...', style: TextStyle(fontSize: 11),),
                    ],
                  ),

                  const SizedBox(height: 8,),

                  ListDaftarPermainan(state: state),

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
                          onPressed: ()  async {
                            final qrResult = await Navigator.of(context).pushNamed(
                              MyRoutes.scanQr
                            );
                            if (!context.mounted || qrResult is! QrGameModel){
                              return;
                            }

                            switch(qrResult.gameType){
                              case MyGameType.ticTacToe:
                                Navigator.of(context).pushReplacementNamed(
                                  MyRoutes.ticTacToeClientGameplay,
                                  arguments: qrResult.gameAddress,
                                );
                                break;
                            }
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
              );
            }
          ),
        ),
      ),
    );
  }
}
