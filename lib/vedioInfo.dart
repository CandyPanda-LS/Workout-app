import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'colors.dart' as color;

class videoInfo extends StatefulWidget {
  const videoInfo({Key? key}) : super(key: key);

  @override
  _videoInfoState createState() => _videoInfoState();
}

class _videoInfoState extends State<videoInfo> {
  List info = [];
  _initData() {
    DefaultAssetBundle.of(context)
        .loadString("json/videoinfo.json")
        .then((value) {
      info = json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 70),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 25,
                        color: color.AppColor.secondPageIconColor,
                      ),
                    ),
                    Icon(
                      Icons.info_outline,
                      size: 25,
                      color: color.AppColor.secondPageIconColor,
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Legs Toning",
                  style: TextStyle(
                      fontSize: 25, color: color.AppColor.secondPageTitleColor),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "and Glutes workout",
                  style: TextStyle(
                      fontSize: 25, color: color.AppColor.secondPageTitleColor),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.timer,
                            size: 20,
                            color: color.AppColor.secondPageIconColor,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "68 min",
                            style: TextStyle(
                                fontSize: 16,
                                color: color.AppColor.secondPageIconColor),
                          )
                        ],
                      ),
                      height: 30,
                      width: 95,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(colors: [
                            color.AppColor.secondPageContainerGradient1stColor,
                            color.AppColor.secondPageContainerGradient2ndColor
                          ])),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.handyman_outlined,
                            size: 25,
                            color: color.AppColor.secondPageIconColor,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Resistent Band",
                            style: TextStyle(
                                fontSize: 16,
                                color: color.AppColor.secondPageIconColor),
                          )
                        ],
                      ),
                      height: 34,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(colors: [
                            color.AppColor.secondPageContainerGradient1stColor,
                            color.AppColor.secondPageContainerGradient2ndColor
                          ])),
                    )
                  ],
                )
              ],
            ),
            width: MediaQuery.of(context).size.width,
            height: 300,
          ),
          Expanded(
              child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15, left: 10),
                  child: Text(
                    "Circuit 1 : Legs Toning",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: color.AppColor.circuitsColor),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                    margin: EdgeInsets.only(top: 15, right: 30),
                    child: Row(
                      children: [
                        Icon(
                          Icons.loop,
                          size: 30,
                          color: color.AppColor.loopColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "3 sets",
                          style: TextStyle(
                              fontSize: 15, color: color.AppColor.setsColor),
                        )
                      ],
                    )),
              ],
            ),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(60))),
          ))
        ],
      ),
      margin: EdgeInsets.only(top: 1),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.4),
              end: Alignment.topRight,
              colors: [
            color.AppColor.gradientFirst.withOpacity(0.9),
            color.AppColor.gradientSecond
          ])),
    ));
  }
}
