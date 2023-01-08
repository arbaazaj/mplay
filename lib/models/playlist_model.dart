import 'package:mplay/models/song_model.dart';

class Playlist {
  final String title;
  final List<Song> songs;
  final String imageUrl;

  Playlist({required this.title, required this.songs, required this.imageUrl});

  static List<Playlist> playlists = [
    Playlist(title: 'Hip-Hop', songs: Song.songs, imageUrl: 'https://pagalworld.ink/siteuploads/thumb/sft20/9867_resize_300x300.webp'),
    Playlist(title: 'Rock', songs: Song.songs, imageUrl: 'https://pagalworld.ink/siteuploads/thumb/sft21/10015_resize_300x300.webp'),
    Playlist(title: 'Techno', songs: Song.songs, imageUrl: 'https://pagalworld.ink/siteuploads/thumb/sft20/9966_resize_300x300.webp'),
  ];

}
