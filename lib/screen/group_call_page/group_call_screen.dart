import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import '../../constant/app_asset.dart';
import '../../constant/app_fontfamily.dart';
import '../../constant/app_text.dart';
import '../create_group_page/create_group_screen.dart';

class GroupCallScreen extends StatefulWidget {
  const GroupCallScreen({Key? key}) : super(key: key);

  @override
  State<GroupCallScreen> createState() => _GroupCallScreenState();
}

class _GroupCallScreenState extends State<GroupCallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.textTheme.headline5!.color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.2,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppAsset.groupcall), fit: BoxFit.fill),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppText.meeting,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                              fontFamily: AppFontFamily.carosfont),
                        ).marginOnly(top: 70, left: 20),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppText.lora,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                              fontFamily: AppFontFamily.carosfont),
                        ).marginOnly(top: 15, left: 20),
                      ],
                    ),
                    ListTile(
                      leading: Container(
                          width: 52,
                          height: 52,
                          decoration: const BoxDecoration(shape: BoxShape.circle),
                          child: Image(image: AssetImage(AppAsset.msg2))),
                      title: Text(AppText.lora,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: AppFontFamily.circularfont,
                                  fontWeight: FontWeight.w500))
                          .marginOnly(top: 5, bottom: 5),
                      subtitle: Text(AppText.meetingg,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: AppFontFamily.circularfont,
                              fontWeight: FontWeight.w500)),
                    ).marginOnly(top: 10, bottom: 5),
                    Container(height: MediaQuery.of(context).size.height / 5.8,),
                    ListTile(
                      leading: Container(
                          width: 36,
                          height: 36,
                          decoration: const BoxDecoration(shape: BoxShape.circle),
                          child: Image(image: AssetImage(AppAsset.msg1))),
                      title: Text(AppText.dean,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: AppFontFamily.circularfont,
                                  fontWeight: FontWeight.w500))
                          .marginOnly(top: 5, bottom: 5),
                      subtitle: Text(AppText.sounds,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: AppFontFamily.circularfont,
                              fontWeight: FontWeight.w500)),
                    ).marginOnly(top: 0),
                    ListTile(
                      leading: Container(
                          width: 36,
                          height: 36,
                          decoration: const BoxDecoration(shape: BoxShape.circle),
                          child: Image(image: AssetImage(AppAsset.msg3))),
                      title: Text(AppText.annei,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: AppFontFamily.circularfont,
                                  fontWeight: FontWeight.w500))
                          .marginOnly(top: 5, bottom: 5),
                      subtitle: Text(
                        AppText.whatabout,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: AppFontFamily.circularfont,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          width: 36,
                          height: 36,
                          decoration: const BoxDecoration(shape: BoxShape.circle),
                          child: Image(image: AssetImage(AppAsset.msg4))),
                      title: Text(AppText.borino,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: AppFontFamily.circularfont,
                                  fontWeight: FontWeight.w500))
                          .marginOnly(top: 5, bottom: 5),
                      subtitle: Text(
                        AppText.whatled,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: AppFontFamily.circularfont,
                            fontWeight: FontWeight.w500),
                      ),
                    ).marginOnly(bottom: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 52,
                          height: 52,
                          decoration: BoxDecoration(
                              color: const Color(0xffFFFFFF).withOpacity(0.8),
                              shape: BoxShape.circle),
                          child: SvgPicture.asset(
                            AppAsset.microphone,
                            color: Colors.black,
                          ).marginAll(15),
                        ),
                        Container(
                          width: 52,
                          height: 52,
                          decoration: BoxDecoration(
                              color: const Color(0xffFFFFFF).withOpacity(0.8),
                              shape: BoxShape.circle),
                          child: const Icon(
                            Icons.volume_up,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          width: 52,
                          height: 52,
                          decoration: BoxDecoration(
                              color: const Color(0xffFFFFFF).withOpacity(0.8),
                              shape: BoxShape.circle),
                          child: SvgPicture.asset(
                            AppAsset.video,
                            color: Colors.black,
                          ).marginAll(15),
                        ),
                        Container(
                          width: 52,
                          height: 52,
                          decoration: const BoxDecoration(
                              color: Color(0xffE9B337), shape: BoxShape.circle),
                          child: SvgPicture.asset(
                            AppAsset.messageicon,
                            color: Colors.white,
                          ).marginAll(15),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(const CreateGroupScreen(),transition: Transition.rightToLeft);
                          },
                          child: Container(
                            width: 52,
                            height: 52,
                            decoration: const BoxDecoration(
                                color: Color(0xffEA3736), shape: BoxShape.circle),
                            child: const Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ).marginOnly(bottom: 30),
                  ],
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Image(
                      image: AssetImage(AppAsset.call1),
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: const Color(0xff8F9099),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white),
                      ),
                      child: const Icon(Icons.mic_off,
                          color: Colors.white, size: 20),
                    )
                  ],
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Image(
                      image: AssetImage(AppAsset.call2),
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: const Color(0xff8F9099),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white),
                      ),
                      child: const Icon(Icons.mic, color: Colors.white, size: 20),
                    )
                  ],
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Image(
                      image: AssetImage(AppAsset.call3),
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: const Color(0xff8F9099),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white),
                      ),
                      child: const Icon(Icons.mic_off,
                          color: Colors.white, size: 20),
                    )
                  ],
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Image(
                      image: AssetImage(AppAsset.call4),
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: const Color(0xff8F9099),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white),
                      ),
                      child: const Icon(Icons.mic_off,
                          color: Colors.white, size: 20),
                    )
                  ],
                ),
              ],
            ).marginOnly(top: 15),
          ],
        ),
      ),
    );
  }
}
