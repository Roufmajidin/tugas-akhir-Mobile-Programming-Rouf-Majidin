import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/widget/headers.dart';
import '../../../utils/widget/sidebar.dart';
import '../controllers/task_controller.dart';
import 'package:mobile_programming_rouf/app/utils/style/appColor.dart';

class TaskView extends GetView<TaskController> {
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
                                'My Task',
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
                                  "https://cdn4.iconfinder.com/data/icons/people-of-business/512/People_Business_man_jacket_name_tag-512.png"),
                            ),
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
                      const Text(
                        'Task Management',
                        style: TextStyle(
                          fontSize: 18,
                          color: appColor.primaryText,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.all(15),
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: appColor.secondaryBg,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(25),
                                        child: const CircleAvatar(
                                          backgroundColor: Colors.amber,
                                          radius: 20,
                                          foregroundImage: NetworkImage(
                                              'https://cdn4.iconfinder.com/data/icons/people-of-business/512/People_Business_man_jacket_name_tag-512.png'),
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(25),
                                        child: const CircleAvatar(
                                          backgroundColor: Colors.amber,
                                          radius: 20,
                                          foregroundImage: NetworkImage(
                                              'https://cdn4.iconfinder.com/data/icons/people-of-business/512/People_Business_man_jacket_name_tag-512.png'),
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(25),
                                        child: const CircleAvatar(
                                          backgroundColor: Colors.amber,
                                          radius: 20,
                                          foregroundImage: NetworkImage(
                                              'https://cdn4.iconfinder.com/data/icons/people-of-business/512/People_Business_man_jacket_name_tag-512.png'),
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        height: 25,
                                        width: 80,
                                        color: appColor.primaryBg,
                                        child: const Center(
                                            child: Text(
                                          '90%',
                                          style: TextStyle(
                                            color: appColor.primaryText,
                                          ),
                                        )),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Container(
                                    height: 25,
                                    width: 80,
                                    color: appColor.primaryBg,
                                    child: const Center(
                                        child: Text(
                                      '9/10 Task',
                                      style: TextStyle(
                                        color: appColor.primaryText,
                                      ),
                                    )),
                                  ),
                                  const Text(
                                    'Pemrograman Mobile (Flutter)',
                                    style: TextStyle(
                                        color: appColor.primaryText,
                                        fontSize: 20),
                                  ),
                                  const Text(
                                    'Tersisa 3 Hari lagi',
                                    style: TextStyle(
                                        color: appColor.primaryText,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            );
                          },
                          physics: const AlwaysScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                        ),
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Align(
        alignment: const Alignment(0.95, 0.95),
        child: FloatingActionButton.extended(
          label: Text('Add Task'),
          icon: const Icon(Icons.add),
          onPressed: () {
            Get.bottomSheet(Container(
              margin: context.isPhone
                  ? EdgeInsets.zero
                  : const EdgeInsets.only(left: 100, right: 100),
              height: Get.height,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white),
            ));
          },
        ),
      ),
    );
  }
}
