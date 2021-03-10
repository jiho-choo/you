import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class YoutubeDetail extends StatelessWidget {
  Widget _titleZone() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "울라랄라~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~",
            style: TextStyle(fontSize: 15),
          ),
          Row(
            children: [
              Text(
                "조회수 10000회",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              Text(" · "),
              Text(
                "2021-02-13",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _descriptionZone() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Text(
          "설명충임~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~",
          style: TextStyle(
            fontSize: 14,
          ),
        ));
  }

  Widget _buttonOne(String iconPath, String text) {
    return Column(
      children: [
        SvgPicture.asset("assets/svg/icons/$iconPath.svg"),
        Text(text)
      ],
    );
  }

  Widget _buttonZone() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buttonOne("like", "1000"),
        _buttonOne("dislike", "0"),
        _buttonOne("share", "공유"),
        _buttonOne("save", "저장"),
      ],
    );
  }

  Widget get line => Container(
        height: 1,
        color: Colors.grey.withOpacity(0.6),
      );

  Widget _ownerZone() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.grey.withOpacity(0.5),
            backgroundImage:
                Image.network("https://img.icons8.com/color/2x/flutter.png")
                    .image,
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "고만좀 혀라... 많이 혔다~~",
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "구독자 65",
                  style: TextStyle(
                      fontSize: 14, color: Colors.black.withOpacity(0.6)),
                ),
              ],
            ),
          ),
          GestureDetector(
            child: Text(
              "구독",
              style: TextStyle(color: Colors.red, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }

  Widget _description() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _titleZone(),
          line,
          _descriptionZone(),
          _buttonZone(),
          SizedBox(height: 20),
          line,
          _ownerZone()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: _description()),
    );
  }
}
