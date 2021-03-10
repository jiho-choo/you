import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';

import 'package:youtube_clone_app/src/models/youtubeVideoResult.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  Rx<YoutubeVideoResult> youtubeResult = YoutubeVideoResult().obs;

  @override
  void onInit() {
    _videoLoad();

    super.onInit();
  }

  void _videoLoad() async {
    YoutubeVideoResult youtubeVideoResult =
        await YoutubeRepository.to.loadVedios();

    if (youtubeVideoResult != null &&
        youtubeVideoResult.items != null &&
        youtubeVideoResult.items.length > 0) {
      youtubeResult(youtubeVideoResult);
    }

    // print(youtubeVideoResult.items.length);
  }
}

class YoutubeRepository extends GetConnect {
  static YoutubeRepository get to => Get.find();

  @override
  void onInit() {
    httpClient.baseUrl = "https://www.googleapis.com";
    super.onInit();
  }

  Future<YoutubeVideoResult> loadVedios() async {
    String url =
        "/youtube/v3/search?part=snippet&channelId=UC3SyT4_WLHzN7JmHQwKQZww&order=date&type=video&videoDefinition=high&key=AIzaSyDI02UiB3vuNk9onwEOJ2KbzOeBWTEu9mA&maxResults=10";

    final response = await get(url);
    if (response.hasError) {
      return Future.error(response.statusText);
    } else {
      if (response.body["items"] != null && response.body["items"].length > 0) {
        return YoutubeVideoResult.fromJson(response.body);
      } else {
        return Future.error(response.statusText);
      }
      // print(response.body["items"]);
    }
  }
}
