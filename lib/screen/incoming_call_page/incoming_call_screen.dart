import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:slider_button/slider_button.dart';

import '../../constant/app_asset.dart';
import '../../constant/app_fontfamily.dart';
import '../../constant/app_text.dart';
import '../video_call_page/video_call_screen.dart';

class IncomingCallScreen extends StatefulWidget {
  const IncomingCallScreen({Key? key}) : super(key: key);

  @override
  State<IncomingCallScreen> createState() => _IncomingCallScreenState();
}

class _IncomingCallScreenState extends State<IncomingCallScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppAsset.incomingcall), fit: BoxFit.fitHeight),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(AppAsset.girlcall),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            AppText.borsha,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25,
              decoration: TextDecoration.none,
              fontFamily: AppFontFamily.carosfont,
              color: const Color(0xffFFFFFF),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            AppText.incoming,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              decoration: TextDecoration.none,
              fontFamily: AppFontFamily.circularfont,
              color: const Color(0xffFFFFFF),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SvgPicture.asset(AppAsset.clock),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    AppText.remind,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      decoration: TextDecoration.none,
                      fontFamily: AppFontFamily.circularfont,
                      color: const Color(0xffFFFFFF),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset(AppAsset.chatting),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    AppText.message,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      decoration: TextDecoration.none,
                      fontFamily: AppFontFamily.circularfont,
                      color: const Color(0xffFFFFFF),
                    ),
                  ),
                ],
              ),
            ],
          ).marginOnly(top: 250),
          Center(
            child: SliderButton(
              buttonColor: Colors.white,
              height: 60,
              buttonSize: 50,
              highlightedColor: Colors.white,
              baseColor: Colors.grey,
              backgroundColor: const Color(0xffFFFFFF).withOpacity(0.2),
              action: () {
                Get.to(const VideocallScreen(),
                    transition: Transition.rightToLeft);
              },
              label: Text(
                AppText.slide,
                style: TextStyle(
                    color: CupertinoColors.white,
                    fontFamily: AppFontFamily.circularfont,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              icon: const Icon(
                Icons.call,
                size: 35,
                color: Colors.green,
              ),
            ),
          ).marginOnly(top: 30),
        ],
      ),
    );
  }
}
