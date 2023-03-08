import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PersonalizadoPage extends StatefulWidget {
  const PersonalizadoPage({Key? key}) : super(key: key);

  @override
  State<PersonalizadoPage> createState() => _PersonalizadoPage();
}

class _PersonalizadoPage extends State<PersonalizadoPage> {
  final videoURL = "https://youtu.be/caYD1-uck_c?list=RDGMEMJQXQAmqrnmK1SEjY_rKBGA";

  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          YoutubePlayer(controller: _controller),
        ],
      ),
    );
  }
}
