import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:youtube_clone_app/src/video_controller.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeDetailController extends GetxController {
  VideoController videoController;
  YoutubePlayerController playerController;
  @override
  void onInit() {
    videoController = Get.find(tag: Get.parameters["videoId"]);
    playerController = YoutubePlayerController(
      initialVideoId: Get.parameters["videoId"],
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    );
    super.onInit();
  }

  String get title => videoController.video.snippet.title;
  String get viewCount => "조회수 ${videoController.statistics.value.viewCount}회";
  String get publishTime =>
      DateFormat("yyy-MM-dd").format(videoController.video.snippet.publishTime);

  String get description => videoController.video.snippet.description;
  String get likeCount => "${videoController.statistics.value.likeCount}";
  String get dislikeCount => "${videoController.statistics.value.dislikeCount}";

// String get cnt => videoController.video.snippet.
}
