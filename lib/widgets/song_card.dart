import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/models.dart';

class SongCard extends StatelessWidget {
  final Song song;

  const SongCard({
    Key? key,
    required this.song,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/song', arguments: song);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10.0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.50,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(5.0),
                image: DecorationImage(
                    image: AssetImage(
                      song.coverUrl,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width * 0.45,
              margin: const EdgeInsets.only(bottom: 10.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        song.title,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        song.description,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.play_circle,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
