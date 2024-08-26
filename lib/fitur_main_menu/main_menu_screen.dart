import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hezbi_lan_game/common/presentation/routes/my_routes.dart';
import 'package:hezbi_lan_game/fitur_main_menu/main_menu_view_model.dart';
import 'package:hezbi_lan_game/fitur_main_menu/ui_components/profile_dialog.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainMenuViewModel(),
      child: SafeArea(
        child: Scaffold(
          body: BlocConsumer<MainMenuViewModel, MainMenuState>(
            listener: (context, state) async {
              if (state.mustShowInitialDialogProfileNameInput){
                final viewModel = context.read<MainMenuViewModel>();
                viewModel.add(const MainMenuEvent.doneShowInitialProfileNameInputDialog());
                showChangePlayerNameDialog(
                  context: context, 
                  playerName: '',
                  isBarrierDismissible: false,
                );
              }
            },
            builder: (context, state) {
              final playerProfile = state.playerProfile;
              return Stack(
                alignment: Alignment.center,
                children: [
                  if (playerProfile != null)
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              borderRadius: BorderRadius.circular(16),
                              onTap: (){
                                showChangePlayerNameDialog(
                                  context: context,
                                  playerName: playerProfile.name,
                                );
                              },
                              child: Row(
                                children: [
                                  const Icon(Icons.person_outline),
                                  const SizedBox(width: 8,),
                                  Text(playerProfile.name)
                                ],
                              ),
                            ),

                            IconButton(
                              onPressed: () async {},
                              icon: const Icon(Icons.settings_outlined),
                            ),
                          ],
                        ),
                      ),
                    ),

                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'LAN\nBoard Game',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 32),
                        ),

                        const SizedBox(height: 48,),

                        FilledButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed(MyRoutes.chooseNewGame);
                          },
                          child: const Text('Buat Room Baru')
                        ),

                        const SizedBox(height: 4,),

                        FilledButton(
                            onPressed: (){
                              Navigator.of(context).pushNamed(MyRoutes.daftarPermainan);
                            },
                            child: const Text('Join Permainan')
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}