import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:video_player_app/vedioInfo.dart';
import 'colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List info = [];
  _initData() {
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
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
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Training',
                  style: TextStyle(
                      fontSize: 30,
                      color: color.AppColor.homePageTitle,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.calendar_today_outlined,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Training",
                  style: TextStyle(
                      fontSize: 20, color: color.AppColor.homePageSubtitle),
                ),
                Expanded(child: Container()),
                Text(
                  "Details",
                  style: TextStyle(
                      fontSize: 20, color: color.AppColor.homePageDetail),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: (){
                    Get.to(()=>videoInfo());
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: color.AppColor.homePageIcons,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    color.AppColor.gradientFirst.withOpacity(0.8),
                    color.AppColor.gradientSecond.withOpacity(0.9)
                  ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(5, 10),
                      blurRadius: 20,
                      color: color.AppColor.gradientSecond.withOpacity(0.2),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(80))),
              child: Container(
                padding: EdgeInsets.only(left: 20, top: 25, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next workout",
                      style: TextStyle(
                          fontSize: 16,
                          color: color.AppColor.homePageContainerTextSmall),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Legs Toning",
                      style: TextStyle(
                          fontSize: 25,
                          color: color.AppColor.homePageContainerTextSmall),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "and Glutes workout",
                      style: TextStyle(
                          fontSize: 25,
                          color: color.AppColor.homePageContainerTextSmall),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.timer,
                          size: 20,
                          color: color.AppColor.homePageContainerTextSmall,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "60min",
                          style: TextStyle(
                              fontSize: 14,
                              color: color.AppColor.homePageContainerTextSmall),
                        ),
                        Expanded(child: Container()),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                      color: color.AppColor.gradientFirst,
                                      blurRadius: 10,
                                      offset: Offset(4, 8))
                                ]),
                            child: Icon(
                              Icons.play_circle_fill,
                              color: Colors.white,
                              size: 60,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 30),
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 40,
                                color: color.AppColor.gradientSecond
                                    .withOpacity(0.5),
                                offset: Offset(8, 10)),
                            BoxShadow(
                                blurRadius: 10,
                                color: color.AppColor.gradientSecond
                                    .withOpacity(0.5),
                                offset: Offset(-1, -5))
                          ],
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/card.png"))),
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(right: 250, bottom: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          //color: Colors.redAccent.withOpacity(0.2),

                          image: DecorationImage(
                              image: AssetImage("assets/figure.png"))),
                    ),
                    Container(
                      width: double.maxFinite,
                      height: 100,
                      margin: EdgeInsets.only(left: 150, top: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You are doing great",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: color.AppColor.homePageDetail),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            "You are doing great",
                            style: TextStyle(
                                fontSize: 16,
                                color: color.AppColor.homePagePlanColor),
                          ),
                          Text(
                            "Stick to your plan",
                            style: TextStyle(
                                fontSize: 16,
                                color: color.AppColor.homePagePlanColor),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
            Row(
              children: [
                Text(
                  "Area of focus",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: color.AppColor.homePageTitle),
                )
              ],
            ),
            Expanded(
                child: OverflowBox(
              maxWidth: MediaQuery.of(context).size.width,
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                    itemCount: (info.length.toDouble() / 2).toInt(),
                    itemBuilder: (_, i) {
                      int a = 2 * i;
                      int b = 2 * i + 1;
                      return Row(
                        children: [
                          Container(
                            height: 170,
                            width: (MediaQuery.of(context).size.width - 90) / 2,
                            margin: EdgeInsets.only(left: 30, right: 15,bottom: 15),
                            padding: EdgeInsets.only(bottom: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 3,
                                      offset: Offset(5, 5),
                                      color: color.AppColor.gradientSecond
                                          .withOpacity(0.1)),
                                  BoxShadow(
                                      blurRadius: 3,
                                      offset: Offset(-5, -5),
                                      color: color.AppColor.gradientSecond
                                          .withOpacity(0.1))
                                ],
                                image: DecorationImage(
                                    image: AssetImage(info[a]["img"]))),
                            child: Center(
                              child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    info[a]["title"],
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: color.AppColor.homePageDetail),
                                  )),
                            ),
                          ),
                          Container(
                            height: 170,
                            width: (MediaQuery.of(context).size.width - 90) / 2,
                            padding: EdgeInsets.only(bottom: 5),
                            margin: EdgeInsets.only(left: 15, right: 30),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 3,
                                      offset: Offset(5, 5),
                                      color: color.AppColor.gradientSecond
                                          .withOpacity(0.1)),
                                  BoxShadow(
                                      blurRadius: 3,
                                      offset: Offset(-5, -5),
                                      color: color.AppColor.gradientSecond
                                          .withOpacity(0.1))
                                ],
                                image: DecorationImage(
                                    image: AssetImage(info[b]["img"]))),
                            child: Center(
                              child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    info[b]["title"],
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: color.AppColor.homePageDetail),
                                  )),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
