import 'package:flutter/material.dart';
import 'package:mplay/models/playlist_model.dart';
import 'package:mplay/widgets/playlist_screen/play_or_shuffle_widget.dart';
import 'package:mplay/widgets/playlist_screen/playlist_information_widget.dart';
import 'package:mplay/widgets/playlist_screen/playlist_songs_widget.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Playlist playlist = Playlist.playlists[0];

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.deepPurple.shade800.withOpacity(0.8),
            Colors.deepPurple.shade200.withOpacity(0.8),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: const Text('Playlist'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                PlaylistInformation(playlist: playlist),
                const SizedBox(
                  height: 30,
                ),
                const PlayOrShuffle(),
                PlaylistSongs(playlist: playlist),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
