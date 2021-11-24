import 'package:daily_exercises_app/constant.dart';
import 'package:flutter/material.dart';

class SessionCard extends StatelessWidget {
  final int seassionNum;
  final bool isDone;
  const SessionCard({
    Key? key,
    required this.seassionNum,
    this.isDone = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, constants) {
      return Container(
        width: constants.maxWidth / 2 - 10,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ]),
        child: Material(
          borderRadius: BorderRadius.circular(15),
          color: Colors.transparent,
          child: InkWell(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: isDone ? kBlueColor : Colors.white,
                          shape: BoxShape.circle,
                          border:
                              Border.all(width: 1.0, color: Colors.black26)),
                      child: Icon(Icons.play_arrow,
                          size: 30, color: isDone ? Colors.white : kBlueColor)),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Session 0${seassionNum}',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      )),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
