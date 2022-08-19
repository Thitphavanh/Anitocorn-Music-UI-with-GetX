// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'models.dart';

class Playlist {
  final String title;
  final List<Song> songs;
  final String imageUrl;

  Playlist({
    required this.title,
    required this.songs,
    required this.imageUrl,
  });

  static List<Playlist> playlists = [
    Playlist(
      title: 'R&B/Soul',
      songs: Song.songs,
      imageUrl:
          'https://images.unsplash.com/photo-1514533212735-5df27d970db0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=812&q=80',
    ),
     Playlist(
      title: 'Alternative/Indie, R&B/Soul, Pop, Hip-Hop/Rap',
      songs: Song.songs,
      imageUrl:
          'https://images.unsplash.com/photo-1614892135411-53c6ac8ce882?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cG9zdCUyMG1hbG9uZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
    ),
     Playlist(
      title: 'Dance/Electronic',
      songs: Song.songs,
      imageUrl:
          'https://images.unsplash.com/photo-1660634061919-a9e2e00ba19b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGRhbmNlJTJGZWxlY3Ryb25pY3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
    ),
  ];
}
