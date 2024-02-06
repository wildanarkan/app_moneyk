import 'package:app_moneyk/app/constant/color.dart';
import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CalendarAppBar(
        accent: color_primary,
        backButton: false,
        onDateChanged: (value) => print(value),
        firstDate: DateTime.now().subtract(Duration(days: 140)),
        lastDate: DateTime.now(),
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixedCircle,
        backgroundColor: color_primary,

        items: [
          TabItem(icon: Icon(Icons.home), title: "HOME"),
          TabItem(icon: Icon(Icons.add, size: 50, ) ),
          TabItem(icon: Icon(Icons.menu), title: "MENU"),
          ],
      ),
    );
  }
}
