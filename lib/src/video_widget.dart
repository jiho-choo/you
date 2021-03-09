import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [_thumbnail(), _simpleDetailInfo()],
      ),
    );
  }

  Widget _simpleDetailInfo() {
    return Container(
      padding: const EdgeInsets.only(left: 10, bottom: 5),
      child: Row(
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.grey.withOpacity(0.5),
            backgroundImage:
                Image.network("https://img.icons8.com/color/2x/flutter.png")
                    .image,
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "아수라 발발발~ 수리수리 마아수리, 아브라 카타블, 하쿠나 마타타 ~~~~~",
                      maxLines: 2,
                    ),
                  ),
                  IconButton(
                      alignment: Alignment.topCenter,
                      icon: Icon(Icons.more_vert),
                      onPressed: () {})
                ],
              )
            ],
          ))
        ],
      ),
    );
  }

  Widget _thumbnail() {
    return Container(height: 250, color: Colors.grey.withOpacity(0.5));
  }
}
