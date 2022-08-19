import 'package:flutter/material.dart';

import '../models/models.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Playlist playlist = Playlist.playlists[0];

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.red.shade900.withOpacity(0.8),
            Colors.red.shade200.withOpacity(0.8),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('Playlist'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                PlaylistInformation(playlist: playlist),
                const SizedBox(height: 30.0),
                const PlayOrShuffleSwitch(),
                PlaylistSongs(playlist: playlist),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
          subtitle:
              Text('${playlist.songs[index].description} . 02:45'),
          trailing: const Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        );
      },
    );
  }
}

class PlayOrShuffleSwitch extends StatefulWidget {
  const PlayOrShuffleSwitch({
    Key? key,
  }) : super(key: key);

  @override
  State<PlayOrShuffleSwitch> createState() => _PlayOrShuffleSwitchState();
}

class _PlayOrShuffleSwitchState extends State<PlayOrShuffleSwitch> {
  bool isPlay = true;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        setState(() {
          isPlay = !isPlay;
        });
      },
      child: Container(
        height: 50.0,
        width: width,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: isPlay ? 0 : width * 0.45,
              child: Container(
                height: 50.0,
                width: width * 0.45,
                decoration: BoxDecoration(
                  color: Colors.red.shade400,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'ຫຼິ້ນ',
                          style: TextStyle(
                            color: isPlay ? Colors.white : Colors.red,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Icon(
                        Icons.play_circle,
                        color: isPlay ? Colors.white : Colors.red,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'ສະຫຼັບ',
                          style: TextStyle(
                            color: isPlay ? Colors.red : Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Icon(
                        Icons.shuffle,
                        color: isPlay ? Colors.red : Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PlaylistInformation extends StatelessWidget {
  final Playlist playlist;

  const PlaylistInformation({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          child: Image.network(
            playlist.imageUrl,
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.height * 0.3,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 30.0),
        Text(
          playlist.title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
