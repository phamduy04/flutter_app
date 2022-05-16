import 'package:app_task/controller/home_controller.dart';
import 'package:app_task/widgets/Buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/TaskModel.dart';
import '../utils/AppAssets.dart';
import '../utils/AppSpaces.dart';
import '../widgets/Scrollbar.dart';
import '../widgets/TaskCard.dart';
import 'add_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) => SafeArea(
        child: Scaffold(
            body: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                  child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                          )),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            AppAssets.menu,
                                            width: 30,
                                          ),
                                          AppSpaces.horizontal20,
                                          Image.asset(
                                            AppAssets.notification,
                                            width: 30,
                                          ),
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                      width: double.infinity,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                "assets/corner.png")),
                                      ),
                                      child: Center(
                                        child: Container(
                                          margin: const EdgeInsets.only(
                                              bottom: 30, left: 10),
                                          width: 40,
                                          height: 40,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.orange),
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    AppSpaces.horizontal15,
                                    const Text(
                                      'My Task',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    const Spacer(),
                                    InkWell(
                                      onTap: () => Get.to(() =>const AddScreen()),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Get.theme.primaryColor,
                                        ),
                                        width: 50,
                                        height: 50,
                                        child: Center(
                                            child: Image.asset(
                                          AppAssets.plus,
                                          width: 20,
                                          height: 20,
                                        )),
                                      ),
                                    ),
                                    AppSpaces.horizontal30,
                                  ]),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(children: [
                                    AppSpaces.horizontal15,
                                    const Text(
                                      'Today',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      'Monday, 1 June',
                                      style: TextStyle(
                                        color: Get.theme.colorScheme.secondary,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    AppSpaces.horizontal30,
                                  ]),
                                  AppSpaces.vertical15,
                                  Container(
                                    height: 60,
                                    padding:const EdgeInsets.only(left: 30),
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 7,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.only(
                                              right: 15.0),
                                          child: DayButton(
                                            dayNumber: index + 1,
                                            character: controller
                                                .getWeekOfDaysFirstLettersByIndex(
                                                    index),
                                            isSelected:
                                                controller.selectedIndex ==
                                                    index,
                                            onTap: () {
                                              controller
                                                  .setSelectedIndex(index);
                                            },
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      )),
                )),
            Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(40))),
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Expanded(
                    child: Container(
                      color: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Get.theme.primaryColor,
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(30)),
                        ),
                        padding: EdgeInsets.only(top: 30),
                        child: Row(children: [
                          AppSpaces.horizontal30,
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Obx(
                              () => CustomPaint(
                                willChange: true,
                                painter: ScrollPainter(
                                  progress: controller.progress.value,
                                  barHeight: 30,
                                ),
                                child: Container(
                                    width: 2,
                                    height: Get.height,
                                    child: SizedBox(
                                      height: controller.progress.value,
                                    )),
                              ),
                            ),
                          ),
                          AppSpaces.horizontal30,
                          Expanded(
                            child: ListView.separated(
                              controller: controller.scrollController,
                              itemCount: taskList.length,
                              padding: EdgeInsets.only(bottom: 30),
                              separatorBuilder: (context, index) =>
                                  AppSpaces.vertical30,
                              itemBuilder: (context, index) {
                                return TaskCard(task: taskList[index]);
                              },
                            ),
                          ),
                          AppSpaces.horizontal25,
                        ]),
                      ),
                    ),
                  ),
                    ],
                  ),
                )),
          ],
        )),
      ),
    );
  }
}
