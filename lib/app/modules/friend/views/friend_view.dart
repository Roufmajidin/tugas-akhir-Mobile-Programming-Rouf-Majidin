import 'dart:html';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/widget/headers.dart';
import '../../../utils/widget/myFriendss.dart';
import '../../../utils/widget/sidebar.dart';
import '../controllers/friend_controller.dart';
import 'package:mobile_programming_rouf/app/utils/style/appColor.dart';

class FriendView extends GetView<FriendController> {
  final GlobalKey<ScaffoldState> _drawwerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawwerKey,
      drawer: const SideBar(),
      backgroundColor: appColor.primaryBg,
      body: Row(
        children: [
          !context.isPhone
              ? const Expanded(
                  flex: 2,
                  //lebih dari 600 px, responsive
                  child: const SideBar(),
                )
              : SizedBox(),
          Expanded(
            flex: 15,
            child: Column(
              children: [
                !context.isPhone
                    ? const Header()
                    : Container(
                        padding: EdgeInsets.all(20),
                        child: Row(children: [
                          IconButton(
                            onPressed: () {
                              _drawwerKey.currentState!.openDrawer();
                            },
                            icon: Icon(
                              Icons.menu,
                              color: appColor.primaryText,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Task Management',
                                style: TextStyle(
                                    fontSize: 20, color: appColor.primaryText),
                              ),
                              Text('Menjadi mudah dengan Task Management',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: appColor.primaryText))
                            ],
                          ),
                          const SizedBox(
                            width: 45,
                          ),
                          const Icon(Icons.notifications,
                              color: appColor.primaryText),
                          const SizedBox(
                            width: 15,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: CircleAvatar(
                              backgroundColor: Colors.amberAccent,
                              radius: 25,
                           foregroundImage: NetworkImage(
                                              'https://cdn4.iconfinder.com/data/icons/people-of-business/512/People_Business_man_jacket_name_tag-512.png'), ),
                          )
                        ]),
                      ),

                //content isi page /screen
                Expanded(
                    child: Container(
                  padding: !context.isPhone
                      ? const EdgeInsets.all(50)
                      : const EdgeInsets.all(20),
                  margin: !context.isPhone
                      ? const EdgeInsets.all(10)
                      : const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: !context.isPhone
                        ? BorderRadius.circular(50)
                        : BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //widget 1
                      const Text(
                        'People you May Now',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: appColor.primaryText),
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 6,
                          clipBehavior: Clip.antiAlias,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: const Image(
                                      image: NetworkImage(
                                          'https://cdn4.iconfinder.com/data/icons/people-of-business/512/People_Business_man_jacket_name_tag-512.png'),
                                    
                                    ),
                                  ),
                                  const Positioned(
                                      bottom: 10,
                                      left: 100,
                                      child: Text(
                                        "Ini Teman",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )),
                                  Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: SizedBox(
                                        height: 36,
                                        width: 36,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              padding: EdgeInsets.zero,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50))),
                                          child: Icon(Icons
                                              .add_circle_outline_outlined),
                                        ),
                                      ))
                                ],
                              ),
                            );
                          },
                        ),
                      ),

                      MyFriends(),
                    ],
                  ),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
