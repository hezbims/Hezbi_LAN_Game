import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hezbi_lan_game/fitur_main_menu/main_menu_view_model.dart';

class ProfileDialog extends StatefulWidget {
  final String initialPlayerName;
  final bool isDismissible;
  const ProfileDialog({
    required this.initialPlayerName,
    required this.isDismissible,
    super.key,
  });

  @override
  State<ProfileDialog> createState() => _ProfileDialogState();
}

class _ProfileDialogState extends State<ProfileDialog> {
  late final _textController = TextEditingController(text: widget.initialPlayerName);
  String? _textFieldError;

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: widget.isDismissible,
      child: Dialog(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 24, right: 24, left: 24, bottom: 8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Nama Kamu',
                  errorText: _textFieldError,
                ),
                autofocus: true,
                maxLength: 10,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('^[A-Za-z_]+[0-9]?'))
                ],
              ),

              const SizedBox(height: 8,),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (widget.isDismissible)
                    TextButton(
                      onPressed: _onCancelDialog,
                      child: const Text('Batal'),
                    ),

                  const SizedBox(width: 8,),

                  TextButton(
                    onPressed: _onSaveNewPlayerName,
                    child: const Text('Simpan'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onCancelDialog(){
    Navigator.of(context).pop();
  }

  void _onSaveNewPlayerName(){
    final newPlayerName = _textController.text;
    if (newPlayerName.isEmpty){
      setState(() {
        _textFieldError = 'Nama tidak boleh kosong';
      });
      return;
    }
    Navigator.of(context).pop(newPlayerName);
  }
}

Future<void> showChangePlayerNameDialog({
  required BuildContext context,
  required String playerName,
  bool isBarrierDismissible = true,
}) async {
  final viewModel = context.read<MainMenuViewModel>();

  final result = await showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation){
        return ProfileDialog(
          initialPlayerName: playerName,
          isDismissible: isBarrierDismissible,
        );
      },
      barrierDismissible: isBarrierDismissible,
      barrierLabel: 'Kembali',
      transitionDuration: const Duration(milliseconds: 200),
      transitionBuilder: (context, animation, secondaryAnimation, child){
        return ScaleTransition(
          scale: animation,
          child: child,
        );
      }
  );
  if (result is! String){
    return;
  }
  viewModel.add(MainMenuEvent.setNewProfileName(result));
}