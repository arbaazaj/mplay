class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song(
      {required this.title,
      required this.description,
      required this.url,
      required this.coverUrl});

  static List<Song> songs = [
    Song(
      title: 'We Rollin',
      description:
          'We Rollin Song Download by Shubh and composed by Shubh where Lyrics Penned by Shubh',
      url: 'https://pagalworld.ink/files/download/type/320/id/10023',
      coverUrl:
          'https://songs6.vlcmusic.com/tiny_image/timthumb.php?q=100&w=500&src=images/42944.png',
    ),
    Song(
      title: 'Deewane Hum',
      description: 'Deewane hum song',
      url: 'https://pagalworld.ink/files/download/type/320/id/9867',
      coverUrl:
          'https://pagalworld.ink/siteuploads/thumb/sft20/9867_resize_300x300.webp',
    ),
    Song(
      title: 'Main Samjha Tha',
      description: 'TV OST',
      url: 'https://pagalworld.ink/files/download/type/320/id/10015',
      coverUrl: 'https://pagalworld.ink/siteuploads/thumb/sft21/10015_resize_300x300.webp',
    ),
    Song(
      title: 'Kali Kali Zulfon',
      description: 'Kali Kali Zulfon Ke Phande Na Dalo Song Download by Nusrat Fateh Ali Khan and composed by Nusrat Fateh Ali Khan',
      url: 'https://pagalworld.ink/files/download/type/320/id/9966',
      coverUrl: 'https://pagalworld.ink/siteuploads/thumb/sft20/9966_resize_300x300.webp',
    ),
  ];
}
