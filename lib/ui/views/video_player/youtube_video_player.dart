
import 'package:flutter/material.dart';
import 'package:simbi_health/ui/shared/colors.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoPlayer extends StatefulWidget {
  final String? youTubeLink;
  const YoutubeVideoPlayer({Key? key, this.youTubeLink}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _YoutubeVideoPlayer();
}

class _YoutubeVideoPlayer extends State<YoutubeVideoPlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    String? videoId = YoutubePlayer.convertUrlToId(widget.youTubeLink!); //"https://www.youtube.com/watch?v=BBAyRBTfsOU"
    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: AppColors.blackColor,
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            // videoProgressIndicatorColor: Colors.amber,
          ),
        ),
      ),
    );
  }
}