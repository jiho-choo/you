import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:youtube_clone_app/src/HomeController.dart';
import 'package:youtube_clone_app/src/video_widget.dart';

class Home extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => CustomScrollView(
          slivers: [
            SliverAppBar(
              title: CustomAppBar(),
              floating: true,
              snap: true,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return GestureDetector(
                    child: VideoWidget(
                        video: controller.youtubeResult.value.items[index]),
                    onTap: () {
                      Get.toNamed("/detail/jiho9526");
                    },
                  );
                },
                childCount: controller.youtubeResult.value.items == null
                    ? 0
                    : controller.youtubeResult.value.items.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_logo(), _actions()],
      ),
    );
  }

  Widget _logo() {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
      child: Container(
        child: Image.asset("assets/images/Rayleigh.gif"),
        width: 100,
      ),
      // width: 100,
    );
  }

  Widget _actions() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
              width: 23,
              height: 23,
              child: SvgPicture.asset("assets/svg/icons/bell.svg")),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GestureDetector(
            onTap: () {},
            child: Container(
                width: 30,
                height: 30,
                child: SvgPicture.asset("assets/svg/icons/search.svg")),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage:
              Image.network("https://img.icons8.com/color/2x/flutter.png")
                  .image,
        )
      ],
    );
  }
}

// ClipRRect(
//       borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(20), topRight: Radius.circular(20)),
