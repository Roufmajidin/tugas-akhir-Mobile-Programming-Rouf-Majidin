import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/widget/headers.dart';
import '../../../utils/widget/myTask.dart';
import '../../../utils/widget/profile_widget.dart';
import '../../../utils/widget/sidebar.dart';
import '../controllers/profile_controller.dart';
import 'package:mobile_programming_rouf/app/utils/style/appColor.dart';

//profile view video 8
class ProfileView extends GetView<ProfileController> {
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
                  child: SideBar(),
                )
              : const SizedBox(),
          Expanded(
            flex: 15,
            child: Column(
              children: [
                !context.isPhone
                    ? const Header()
                    : Container(
                        padding: const EdgeInsets.all(20),
                        child: Row(children: [
                          IconButton(
                            onPressed: () {
                              _drawwerKey.currentState!.openDrawer();
                            },
                            icon: const Icon(
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
                          GestureDetector(
                            onTap: () {
                              Get.defaultDialog(
                                title: 'Log Out',
                                content:
                                    const Text('Apakah yakin akan keluar?'),
                                cancel: ElevatedButton(
                                  onPressed: () => Get.back(),
                                  child: const Text('Batal'),
                                ),
                                confirm: ElevatedButton(
                                    onPressed: () => Get.toNamed(Routes.LOGIN),
                                    child: const Text('Ya')),
                              );
                            },
                            child: Row(
                              children: const [
                                Text('Log out',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey)),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.logout,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          ),
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

                        //
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const ProfileWidget(),
                            SizedBox(
                              height: Get.height * 0.4,
                              //mytask yang di extract  di utils
                              child: const MyTask(),
                            ),
                          ],
                        )))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
