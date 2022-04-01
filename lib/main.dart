import 'package:app_ukm/app/modules/home/views/home_view.dart';
import 'package:app_ukm/app/modules/login/views/login_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute:"/",
      getPages: [
        GetPage(name: "/", page: ()=>HomeView()),
      ],
    ),
  );
}
