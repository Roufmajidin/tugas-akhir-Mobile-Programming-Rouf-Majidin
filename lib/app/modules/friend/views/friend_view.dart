import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/friend_controller.dart';

class FriendView extends GetView<FriendController> {
  const FriendView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FriendView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FriendView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
