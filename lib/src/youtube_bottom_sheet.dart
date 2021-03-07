import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class YoutubeBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        height: 200,
        color: Colors.white,
        child: Column(
          children: [
            _header(),
            SizedBox(
              height: 10,
            ),
            _itemButton(
                icon: "upload",
                iconSize: 17,
                label: "동영상 업로드",
                onTab: () {
                  print("동영상 업로드 기능");
                }),
            SizedBox(
              height: 10,
            ),
            _itemButton(
                icon: "broadcast",
                iconSize: 17,
                label: "실시간 스트리밍 시작",
                onTab: () {
                  print("실시간 스트리밍 시작");
                }),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "만들기",
          style: TextStyle(fontSize: 16),
        ),
        IconButton(
          icon: Icon(Icons.close),
          onPressed: Get.back,
        )
      ],
    );
  }

  Widget _itemButton(
      {String icon, double iconSize, String label, Function onTab}) {
    return InkWell(
      onTap: onTab,
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.grey.withOpacity(0.3)),
            child: Center(
              child: Container(
                width: iconSize,
                height: iconSize,
                child: SvgPicture.asset("assets/svg/icons/$icon.svg"),
              ),
            ),
          ),
          SizedBox(width: 15),
          Text(label)
        ],
      ),
    );
  }
}
