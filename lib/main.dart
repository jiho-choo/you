import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_clone_app/src/app.dart';
import 'package:youtube_clone_app/src/app_controller.dart';
import 'package:youtube_clone_app/src/youtube_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // debugShowCheckedModeBanner: false ,
      title: "Youtube clone App",
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialBinding: InitBinding(),
      // initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => App()),
        GetPage(name: "/detail/:videoId", page: () => YoutubeDetail())
      ],
    );
  }
}
