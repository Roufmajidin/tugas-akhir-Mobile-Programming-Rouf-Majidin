import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mobile_programming_rouf/app/utils/style/appColor.dart';

//widget profile video  8
class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: !context.isPhone
            ? Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 48, 45, 31),
                        radius: 160,
                        foregroundImage: NetworkImage(
                            "https://cdn4.iconfinder.com/data/icons/people-of-business/512/People_Business_man_jacket_name_tag-512.png"),
                      ),
                    ),
                  ),
                  //jarak gambaar kesamping
                  // SizedBox(
                  //   width: 20,
                  // ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Rouf Majidin',
                          style: TextStyle(
                              fontSize: 20, color: appColor.primaryText),
                        ),
                        //email
                        Text(
                          'RoufMajid@gmail.com',
                          style: TextStyle(
                              fontSize: 16, color: appColor.primaryText),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : Center(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 48, 45, 31),
                        radius: 90,
                        foregroundImage: NetworkImage(
                            "https://cdn4.iconfinder.com/data/icons/people-of-business/512/People_Business_man_jacket_name_tag-512.png"),
                      ),
                    ),
                    // jarak gambaar kesamping
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Trivena Natalia Gunawan',
                      style:
                          TextStyle(fontSize: 20, color: appColor.primaryText),
                    ),
                    //email
                    const Text(
                      'Triv.naGun@gmail.com',
                      style:
                          TextStyle(fontSize: 16, color: appColor.primaryText),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
