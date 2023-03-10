import 'package:flutter/material.dart';
import 'package:mplay/models/playlist_model.dart';

class PlaylistSongs extends StatelessWidget {
  const PlaylistSongs({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: playlist.songs.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Text(
            '${index + 1}',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          title: Text(
            playlist.songs[index].title,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            '${playlist.songs[index].description} 03:15',
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          trailing:
          const Icon(Icons.more_vert, color: Colors.white),
        );
      },
    );
  }
}