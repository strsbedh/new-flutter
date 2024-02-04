import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_asset.dart';
import '../../constant/app_fontfamily.dart';
import '../../constant/app_text.dart';
import '../landing_page/landing_screen.dart';


class CreatePollScreen extends StatefulWidget {
  const CreatePollScreen({Key? key}) : super(key: key);

  @override
  State<CreatePollScreen> createState() => _CreatePollScreenState();
}

class _CreatePollScreenState extends State<CreatePollScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.textTheme.headline5!.color,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppText.createepoll,
                style: TextStyle(
                    color: context.textTheme.headline3!.color,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: AppFontFamily.carosfont),
              ),
              GestureDetector(
                onTap: () {
                  Get.offAll(const LandingScreen(),transition: Transition.rightToLeft);
                },
                child: Icon(
                  Icons.close,
                  color: context.textTheme.headline3!.color,
                ),
              ),
            ],
          ).marginOnly(top: 50, left: 22, right: 22),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                AppText.whatwould,
                style: TextStyle(
                    fontSize: 35,
                    fontFamily: AppFontFamily.carosfont,
                    color: context.textTheme.headline3!.color,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ).marginOnly(top: 50, left: 22, right: 22),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(AppText.liketowork,
                  style: TextStyle(
                      fontSize: 35,
                      fontFamily: AppFontFamily.carosfont,
                      color: context.textTheme.headline3!.color,
                      fontWeight: FontWeight.w400)),
            ],
          ).marginOnly(top: 20, left: 22, right: 22),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: 327,
                decoration: BoxDecoration(
                  color: context.theme.bottomAppBarColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 70,
                      width: 109,
                      decoration: const BoxDecoration(
                        color: Color(0xffF0ECE3),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Checkbox(
                        fillColor:
                            MaterialStatePropertyAll(context.theme.hintColor),
                        shape: const CircleBorder(),
                        value: checkBoxValue,
                        onChanged: (bool? newValue) {
                          setState(() {
                            checkBoxValue = newValue!;
                          });
                        },
                      ),
                      title: Text(
                        AppText.thought,
                        style: TextStyle(
                            color: context.theme.hintColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: AppFontFamily.carosfont),
                      ),
                      subtitle: Text(
                        AppText.makesomething,
                        style: TextStyle(
                            color: context.textTheme.headline3!.color,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: AppFontFamily.circularfont),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ).marginOnly(top: 50),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: 327,
                decoration: BoxDecoration(
                  color: context.theme.bottomAppBarColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 70,
                      width: 251,
                      decoration: const BoxDecoration(
                        color: Color(0xffF0ECE3),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Checkbox(
                        fillColor:
                            MaterialStatePropertyAll(context.theme.hintColor),
                        shape: const CircleBorder(),
                        value: checkBoxValue1,
                        onChanged: (bool? newValue) {
                          setState(() {
                            checkBoxValue1 = newValue!;
                          });
                        },
                      ),
                      title: Text(
                        AppText.uiux,
                        style: TextStyle(
                            color: context.theme.hintColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: AppFontFamily.carosfont),
                      ),
                      subtitle: Text(
                        AppText.design,
                        style: TextStyle(
                            color: context.textTheme.headline3!.color,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: AppFontFamily.circularfont),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ).marginOnly(top: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: 327,
                decoration: BoxDecoration(
                  color: context.theme.bottomAppBarColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 70,
                      width: 66,
                      decoration: const BoxDecoration(
                        color: Color(0xffF0ECE3),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Checkbox(
                        fillColor:
                            MaterialStatePropertyAll(context.theme.hintColor),
                        shape: const CircleBorder(),
                        value: checkBoxValue2,
                        onChanged: (bool? newValue) {
                          setState(() {
                            checkBoxValue2 = newValue!;
                          });
                        },
                      ),
                      title: Text(
                        AppText.designn,
                        style: TextStyle(
                            color: context.theme.hintColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: AppFontFamily.carosfont),
                      ),
                      subtitle: Text(
                        AppText.everything,
                        style: TextStyle(
                            color: context.textTheme.headline3!.color,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: AppFontFamily.circularfont),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ).marginOnly(top: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                AppText.votedmember,
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: AppFontFamily.circularfont,
                    color: const Color(0xff797C7B),
                    fontWeight: FontWeight.w500),
              ),
            ],
          ).marginOnly(top: 40, left: 22, right: 22),
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppAsset.vote1), fit: BoxFit.fill),
                      shape: BoxShape.circle,
                      border: Border.all(color: context.theme.cardColor),
                    ),
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppAsset.vote2), fit: BoxFit.fill),
                      shape: BoxShape.circle,
                      border: Border.all(color: context.theme.cardColor),
                    ),
                  ).marginOnly(left: 40),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppAsset.vote3), fit: BoxFit.fill),
                      shape: BoxShape.circle,
                      border: Border.all(color: context.theme.cardColor),
                    ),
                  ).marginOnly(left: 80),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppAsset.vote4), fit: BoxFit.fill),
                      shape: BoxShape.circle,
                      border: Border.all(color: context.theme.cardColor),
                    ),
                  ).marginOnly(left: 120),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppAsset.vote5), fit: BoxFit.fill),
                      shape: BoxShape.circle,
                      border: Border.all(color: context.theme.cardColor),
                    ),
                  ).marginOnly(left: 120),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppAsset.vote6), fit: BoxFit.fill),
                      shape: BoxShape.circle,
                      border: Border.all(color: context.theme.cardColor),
                    ),
                  ).marginOnly(left: 160),
                ],
              )
            ],
          ).marginOnly(top: 20, left: 22, right: 22),
        ],
      ),
    );
  }

  bool checkBoxValue = false;
  bool checkBoxValue1 = false;
  bool checkBoxValue2 = false;
}
