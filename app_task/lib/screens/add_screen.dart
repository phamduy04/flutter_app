import 'package:app_task/controller/add_controller.dart';
import 'package:app_task/widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/AppAssets.dart';
import '../utils/AppSpaces.dart';
import '../widgets/Buttons.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddController>(
      init: AddController(),
       builder: (controller)=> SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: const EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          )),
                      const Icon(
                        Icons.menu,
                        color: Colors.black,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Create New Task',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 27,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Spacer(),
                      Image.asset(
                        AppAssets.note,
                        height: 40,
                      ),
                    ],
                  ),
                  Expanded(
                child: ListView(
              padding: EdgeInsets.zero,
              children: [
                AppSpaces.vertical25,
               const Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextInput(
                    label: 'Task Name',
                    value: 'Team Meeting',
                  ),
                ),
                AppSpaces.vertical25,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: [
                      Text(
                        'Select Category',
                        style: TextStyle(
                          fontSize: 16,
                          color: Get.theme.primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 13,
                          color: Get.theme.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                AppSpaces.vertical25,
                Container(
                  height: 32,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.categoryList.length,
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    separatorBuilder: (context, index) => AppSpaces.horizontal15,
                    itemBuilder: (context, index) => CategoryButton(
                      label: controller.categoryList[index],
                      isSelected: controller.selectedIndex == index,
                      onTap: () => controller.setIndex(index),
                    ),
                  ),
                ),
                AppSpaces.vertical25,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(children: [
                    Expanded(
                      flex: 20,
                      child: TextInput(
                        label: 'Date',
                        value: 'Monday, 1 June',
                      ),
                    ),
                    Spacer(flex: 10),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Get.theme.primaryColor,
                      ),
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                      ),
                    ),
                  ]),
                ),
                AppSpaces.vertical25,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(children: [
                    Expanded(
                      child: TextInput(
                        label: 'Start Time',
                        value: '10:00 AM',
                        suffix: Image.asset(
                          AppAssets.arrow_down,
                          width: 25,
                        ),
                      ),
                    ),
                    AppSpaces.horizontal20,
                    Expanded(
                      child: TextInput(
                        label: 'End Time',
                        value: '11:00 AM',
                        suffix: Image.asset(
                          AppAssets.arrow_down,
                          width: 25,
                        ),
                      ),
                    ),
                  ]),
                ),
                AppSpaces.vertical25,
               const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextInput(
                    label: 'Describtion',
                    value: 'Discuss all question about project',
                  ),
                ),
                AppSpaces.vertical25,
                Center(
                  child: AppButton(
                    label: 'Create Task',
                    onTap: () => Get.snackbar('Success', 'Task Created Successfully'),
                  ),
                ),
                AppSpaces.vertical25,
              ],
            )),
                ],
              ),
            )),
      ),
    );
  }
}
