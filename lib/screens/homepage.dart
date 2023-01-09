import 'package:flutter/material.dart';
import 'package:mplay/models/playlist_model.dart';
import 'package:mplay/models/song_model.dart';
import 'package:mplay/widgets/custom_appbar.dart';
import 'package:mplay/widgets/custom_navbar.dart';
import 'package:mplay/widgets/homepage_screen/discover_music.dart';
import 'package:mplay/widgets/homepage_screen/playlist_music.dart';
import 'package:mplay/widgets/homepage_screen/trending_music.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Song> songs = Song.songs;
    List<Playlist> playlists = Playlist.playlists;

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
        appBar: const CustomAppBar(),
        bottomNavigationBar: const CustomNavBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const DiscoverMusic(),
              TrendingMusic(songs: songs),
              PlaylistMusic(playlists: playlists),
            ],
          ),
        ),
      ),
    );
  }
}
