import 'package:flutter/material.dart';
import '../models/models.dart';
import 'widgets.dart';

class PlaylistMusic extends StatelessWidget {
  final List<Playlist> playlists;
  const PlaylistMusic({
    Key? key,
    required this.playlists,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SectionHeader(title: 'ລາຍການຫຼິ້ນ'),
          ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 20.0),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: playlists.length,
            itemBuilder: (context, index) {
              return PlaylistCard(playlist: playlists[index]);
            },
          ),
        ],
      ),
    );
  }
}
