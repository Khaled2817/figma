import 'package:flutter/material.dart';
import 'package:untitled/kh.dart';
import 'package:video_player/video_player.dart';

class VideoApp extends StatefulWidget {
  final String videoUrl;


  const VideoApp({super.key, required this.videoUrl});

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> with RouteAware {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  bool _videoLoaded = false;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
    _controller.setLooping(true);

    _initializeVideoPlayerFuture = _controller.initialize();
    // if (AuthProvider.isLogin()) {
    //   Provider.of<VideoProvider>(context, listen: false).increaseViews();
    // }

    _initializeVideoPlayerFuture.then((_) {
      if (mounted) {
        setState(() {
          _videoLoaded = true;
        });
        _controller.play();
      }
    });
    // _controller.addListener(() {
    //   if (_controller.value.isInitialized && !_controller.value.isPlaying) {
    //     setState(() {
    //       _videoLoaded = true;
    //     });
    //   }
    // });
  }

  @override
  void didChangeDependencies() {
    routeObserver.subscribe(
        this, ModalRoute.of(context) as PageRoute); //Subscribe it here
    super.didChangeDependencies();
  }

  @override
  void didPop() {
    print("didPop");
    super.didPop();
  }

  /// Called when the top route has been popped off, and the current route
  /// shows up.
  @override
  void didPopNext() {
    print("didPopNext");
    _controller.play();
    super.didPopNext();
  }

  /// Called when the current route has been pushed.
  @override
  void didPush() {
    print("didPush");
    super.didPush();
  }

  /// Called when a new route has been pushed, and the current route is no
  /// longer visible.
  @override
  void didPushNext() {
    print("didPushNext");
    _controller.pause();
    super.didPushNext();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _controller.value.isPlaying
                    ? _controller.pause()
                    : _controller.play();
              });
            },
            child: AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: Stack(
                children: [
                  VideoPlayer(_controller),
                ],
              ),
            ),
          );
        } else {
          return Text("khaled zaki");
        }
      },
    );
  }
  }