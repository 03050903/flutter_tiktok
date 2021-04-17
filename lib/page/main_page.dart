import 'package:flutter/material.dart';
import 'package:flutter_tiktok/controller/main_page_scroll_controller.dart';
import 'package:flutter_tiktok/page/friend_page.dart';
import 'package:flutter_tiktok/page/home_page.dart';
import 'package:flutter_tiktok/page/message_page.dart';
import 'package:flutter_tiktok/page/user_page.dart';
import 'package:flutter_tiktok/page/widget/main_page_bottom_bar_widget.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  final MainPageScrollController mainPageController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=>_getBody()),
      //底部导航
      bottomNavigationBar:  MainPageBottomBarWidget(),
    );
  }

  _getBody() {
    switch(mainPageController.indexBottomBarMainPage.value){
      case 0:
        return HomePage();
      case 1:
        return FriendPage();
      case 2:
        return MessagePage();
      case 3:
        return UserPage();
    }
  }
}
