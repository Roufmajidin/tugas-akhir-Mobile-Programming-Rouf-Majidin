import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../style/appColor.dart';

class UpcomingTask extends StatelessWidget {
  const UpcomingTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Upcoming Task',
              style: TextStyle(
                color: appColor.primaryText,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
                child: SizedBox(
              height: 150,
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Container(
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
                                    'https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0'),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: const CircleAvatar(
                                backgroundColor: Colors.amber,
                                radius: 20,
                                foregroundImage: NetworkImage(
                                    'https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0'),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: const CircleAvatar(
                                backgroundColor: Colors.amber,
                                radius: 20,
                                foregroundImage: NetworkImage(
                                    'https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0'),
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
            )
                //:

                //perbaikan mandiri

                //   SizedBox(

                //     height: 150,
                //     child: ListView(
                //       physics: const AlwaysScrollableScrollPhysics(),
                //       scrollDirection: Axis.vertical,
                //       shrinkWrap: true,
                //       children: [
                //         Container(
                //           margin: const EdgeInsets.all(10),
                //           padding: const EdgeInsets.all(15),
                //           height: 150,
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(20),
                //             color: appColor.secondaryBg,
                //           ),
                //           child: Column(
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Row(
                //                 children: [
                //                   ClipRRect(
                //                     borderRadius: BorderRadius.circular(25),
                //                     child: const CircleAvatar(
                //                       backgroundColor: Colors.amber,
                //                       radius: 20,
                //                       foregroundImage: NetworkImage(
                //                           'https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0'),
                //                     ),
                //                   ),
                //                   ClipRRect(
                //                     borderRadius: BorderRadius.circular(25),
                //                     child: const CircleAvatar(
                //                       backgroundColor: Colors.amber,
                //                       radius: 20,
                //                       foregroundImage: NetworkImage(
                //                           'https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0'),
                //                     ),
                //                   ),
                //                   ClipRRect(
                //                     borderRadius: BorderRadius.circular(25),
                //                     child: const CircleAvatar(
                //                       backgroundColor: Colors.amber,
                //                       radius: 20,
                //                       foregroundImage: NetworkImage(
                //                           'https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0'),
                //                     ),
                //                   ),
                //                   const Spacer(),
                //                   Container(
                //                     height: 25,
                //                     width: 80,
                //                     color: appColor.primaryBg,
                //                     child: const Center(
                //                         child: Text(
                //                       '90%',
                //                       style: TextStyle(
                //                         color: appColor.primaryText,
                //                       ),
                //                     )),
                //                   ),
                //                 ],
                //               ),
                //               const Spacer(),
                //               Container(
                //                 height: 25,
                //                 width: 80,
                //                 color: appColor.primaryBg,
                //                 child: const Center(
                //                     child: Text(
                //                   '9/10 Task',
                //                   style: TextStyle(
                //                     color: appColor.primaryText,
                //                   ),
                //                 )),
                //               ),
                //               const Text(
                //                 'Pemrograman Mobile (Flutter)',
                //                 style: TextStyle(
                //                     color: appColor.primaryText, fontSize: 20),
                //               ),
                //               const Text(
                //                 'Tersisa 3 Hari lagi',
                //                 style: TextStyle(
                //                     color: appColor.primaryText, fontSize: 15),
                //               ),
                //             ],
                //           ),
                //         ),
                //                Container(
                //           margin: const EdgeInsets.all(10),
                //           padding: const EdgeInsets.all(15),
                //           height: 150,
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(20),
                //             color: appColor.secondaryBg,
                //           ),
                //           child: Column(
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Row(
                //                 children: [
                //                   ClipRRect(
                //                     borderRadius: BorderRadius.circular(25),
                //                     child: const CircleAvatar(
                //                       backgroundColor: Colors.amber,
                //                       radius: 20,
                //                       foregroundImage: NetworkImage(
                //                           'https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0'),
                //                     ),
                //                   ),
                //                   ClipRRect(
                //                     borderRadius: BorderRadius.circular(25),
                //                     child: const CircleAvatar(
                //                       backgroundColor: Colors.amber,
                //                       radius: 20,
                //                       foregroundImage: NetworkImage(
                //                           'https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0'),
                //                     ),
                //                   ),
                //                   ClipRRect(
                //                     borderRadius: BorderRadius.circular(25),
                //                     child: const CircleAvatar(
                //                       backgroundColor: Colors.amber,
                //                       radius: 20,
                //                       foregroundImage: NetworkImage(
                //                           'https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0'),
                //                     ),
                //                   ),
                //                   const Spacer(),
                //                   Container(
                //                     height: 25,
                //                     width: 80,
                //                     color: appColor.primaryBg,
                //                     child: const Center(
                //                         child: Text(
                //                       '90%',
                //                       style: TextStyle(
                //                         color: appColor.primaryText,
                //                       ),
                //                     )),
                //                   ),
                //                 ],
                //               ),
                //               const Spacer(),
                //               Container(
                //                 height: 25,
                //                 width: 80,
                //                 color: appColor.primaryBg,
                //                 child: const Center(
                //                     child: Text(
                //                   '9/10 Task',
                //                   style: TextStyle(
                //                     color: appColor.primaryText,
                //                   ),
                //                 )),
                //               ),
                //               const Text(
                //                 'Pemrograman Mobile (Flutter)',
                //                 style: TextStyle(
                //                     color: appColor.primaryText, fontSize: 20),
                //               ),
                //               const Text(
                //                 'Tersisa 3 Hari lagi',
                //                 style: TextStyle(
                //                     color: appColor.primaryText, fontSize: 15),
                //               ),
                //             ],
                //           ),
                //         ),

                //                          ],
                //     ),
                //   ),

                // //end
                ),
          ],
        ),
      ),
    );
  }
}
