import 'package:flutter/material.dart';
import 'package:hezbi_lan_game/fitur_join_permainan/presentation/daftar_permainan/daftar_permainan_view_model.dart';

class ListDaftarPermainan extends StatelessWidget {
  final DaftarPermainanState state;
  const ListDaftarPermainan({
    required this.state,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
