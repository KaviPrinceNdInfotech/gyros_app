import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class IntroVideoBoxController extends GetxController {
  final source =
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4';
  VideoPlayerController? controller;
  RxBool isLoader = true.obs;
  @override
  void onInit() {
    controller =
        // VideoPlayerController.network(
        //     "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4")
        VideoPlayerController.asset("lib/assets/asset/green1.mp4")
          ..addListener(() => update())
          ..setLooping(true)
          ..initialize().then((_) {
            controller!.play();
            update();
            isLoader.value = false;
          });
    super.onInit();

    @override
    void dispose() {
      super.dispose();
      controller?.dispose();
    }
    // @override
    // void dispose() {
    //   VideoLectureController.dispose();
    //   chewieController.dispose();
    //   super.dispose();
    // }
  }
}
