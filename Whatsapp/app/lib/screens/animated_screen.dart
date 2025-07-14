import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class AnimatedGradientScreen extends StatefulWidget {
  @override
  _AnimatedGradientScreenState createState() => _AnimatedGradientScreenState();
}

class _AnimatedGradientScreenState extends State<AnimatedGradientScreen> {
  late VideoPlayerController _videoController;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();

    _videoController = VideoPlayerController.asset('assets/videos/bg_video.mp4')
      ..initialize().then((_) {
        _videoController.setLooping(true);
        _videoController.setVolume(0);
        _videoController.play();

        setState(() {
          _isInitialized = true;
        });
      });
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isInitialized
          ? Stack(
              fit: StackFit.expand,
              children: [
                FittedBox(
                  fit: BoxFit.cover,
                  child: SizedBox(
                    width: _videoController.value.size.width,
                    height: _videoController.value.size.height,
                    child: VideoPlayer(_videoController),
                  ),
                ),
                
              ],
            )
          : Center(child: CircularProgressIndicator()),
    );
  }
}
