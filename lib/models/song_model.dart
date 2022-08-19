// ignore_for_file: public_member_api_docs, sort_constructors_first
class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });

  static List<Song> songs = [
    Song(
      title: 'I Like You',
      description: 'I like you',
      url: 'assets/music/Post Malone - I Like You (A Happier Song) w. Doja Cat.mp3',
      coverUrl: 'assets/images/i-like-you1.jpg',
    ),
     Song(
      title: 'Creep',
      description: 'creep',
      url: 'assets/music/R3HAB & GATTÜSO - Creep.mp3',
      coverUrl: 'assets/images/creep.jpg',
    ),
     Song(
      title: 'Numb',
      description: 'cumb',
      url: 'assets/music/Marshmello, Khalid - Numb.mp3',
      coverUrl: 'assets/images/numb.jpg',
    ),
  ];
}
