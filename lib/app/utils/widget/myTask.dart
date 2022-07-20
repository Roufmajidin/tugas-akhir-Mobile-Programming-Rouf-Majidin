import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../style/appCOlor.dart';

class MyTask extends StatelessWidget {
  const MyTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My Task',
            style: TextStyle(
              color: appColor.primaryText,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 180,
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15),
                  width: 400,
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
                              '8%',
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
                          '20/10 Task',
                          style: TextStyle(
                            color: appColor.primaryText,
                          ),
                        )),
                      ),
                      const Text(
                        'Pemrograman Mobile (Flutter)',
                        style: TextStyle(
                            color: appColor.primaryText, fontSize: 20),
                      ),
                      const Text(
                        'Tersisa 3 Hari lagi',
                        style: TextStyle(
                            color: appColor.primaryText, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Container(
                  clipBehavior: Clip.antiAlias,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15),
                  width: 400,
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
                              '78%',
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
                          '20/10 Task',
                          style: TextStyle(
                            color: appColor.primaryText,
                          ),
                        )),
                      ),
                      const Text(
                        'Pemrograman Mobile (Flutter)',
                        style: TextStyle(
                            color: appColor.primaryText, fontSize: 20),
                      ),
                      const Text(
                        'Tersisa 3 Hari lagi',
                        style: TextStyle(
                            color: appColor.primaryText, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15),
                  width: 400,
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
                              '30%',
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
                          '20/10 Task',
                          style: TextStyle(
                            color: appColor.primaryText,
                          ),
                        )),
                      ),
                      const Text(
                        'Pemrograman Mobile (Flutter)',
                        style: TextStyle(
                            color: appColor.primaryText, fontSize: 20),
                      ),
                      const Text(
                        'Tersisa 3 Hari lagi',
                        style: TextStyle(
                            color: appColor.primaryText, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15),
                  width: 400,
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
                          '20/10 Task',
                          style: TextStyle(
                            color: appColor.primaryText,
                          ),
                        )),
                      ),
                      const Text(
                        'Pemrograman Mobile (Flutter)',
                        style: TextStyle(
                            color: appColor.primaryText, fontSize: 20),
                      ),
                      const Text(
                        'Tersisa 3 Hari lagi',
                        style: TextStyle(
                            color: appColor.primaryText, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
