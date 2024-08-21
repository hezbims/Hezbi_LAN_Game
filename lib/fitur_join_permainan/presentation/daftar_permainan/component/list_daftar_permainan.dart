import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hezbi_lan_game/common/presentation/component/my_default_retry_widget.dart';
import 'package:hezbi_lan_game/fitur_join_permainan/presentation/daftar_permainan/component/daftar_permainan_list_item.dart';
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
        child: _getMainContent(context),
    );
  }

  Widget _getMainContent(BuildContext context){
    if (state.serviceDiscoveryStartupStatus.isError()){
      return Center(
        child: MyDefaultRetryWidget(
          onRetry: (){
            context.read<DaftarPermainanViewModel>().add(
              const DaftarPermainanEvent.discoverGame()
            );
          },
          errorText: 'Terjadi error tidak diketahui ketika mencoba memindai'
        )
      );
    }


    if (state.discoveredGames.isEmpty){
      return const Center(
        child: Text(
          'Belum ada daftar permainan yang ditemukan',
          style: TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
      );
    }

    return ListView.separated(
      padding: EdgeInsets.all(16),
      itemBuilder: (context, index){
        return DaftarPermainanListItem(game: state.discoveredGames[index]);
      },
      separatorBuilder: (context, index){
        return const SizedBox(height: 6,);
      },
      itemCount: state.discoveredGames.length,
    );
  }
}
