import 'package:flutter/material.dart';
import 'package:mplay/models/playlist_model.dart';
import 'package:mplay/widgets/playlist_card.dart';
import 'package:mplay/widgets/section_header.dart';

class PlaylistMusic extends StatelessWidget {
  const PlaylistMusic({
    Key? key,
    required this.playlists,
  }) : super(key: key);

  final List<Playlist> playlists;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SectionHeader(title: 'Playlist'),
          ListView.builder(
              padding: const EdgeInsets.only(top: 20.0),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: playlists.length,
              itemBuilder: (context, index) {
                return PlaylistCard(playlist: playlists[index]);
              })
        ],
      ),
    );
  }
}