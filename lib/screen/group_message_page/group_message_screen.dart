import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';


import '../../constant/app_asset.dart';
import '../../constant/app_fontfamily.dart';
import '../../constant/app_text.dart';
import '../incoming_call_page/incoming_call_screen.dart';

class GroupMessageScreen extends StatefulWidget {
  const GroupMessageScreen({Key? key}) : super(key: key);

  @override
  State<GroupMessageScreen> createState() => _GroupMessageScreenState();
}

class _GroupMessageScreenState extends State<GroupMessageScreen> {
  List image = [
    AppAsset.camera,
    AppAsset.document,
    AppAsset.poll,
    AppAsset.media,
    AppAsset.user,
    AppAsset.map,
  ];
  List name = [
    AppText.camera,
    AppText.documents,
    AppText.createpoll,
    AppText.mediapoll,
    AppText.contact,
    AppText.location,
    AppText.location,
  ];

  List subname = [
    "",
    AppText.shareyour,
    AppText.createaa,
    AppText.sharephotos,
    AppText.shareyourr,
    AppText.sharelocation,
  ];
@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.textTheme.headline5!.color,
      appBar: AppBar(
        toolbarHeight: 65,
        titleSpacing: -5,
        leading: BackButton(color: context.textTheme.headline3!.color),
        elevation: 0,
        backgroundColor: context.theme.cardColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(AppAsset.team),
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  AppText.team,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      fontFamily: AppFontFamily.carosfont,
                      color: context.textTheme.headline3!.color),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  AppText.members,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: AppFontFamily.circularfont,
                      color: const Color(0xff797C7B)),
                ),
              ],
            ).marginOnly(left: 10, top: 5),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Get.to(const IncomingCallScreen(),
                    transition: Transition.rightToLeft);
              },
              child: SvgPicture.asset(AppAsset.call,
                      color: context.textTheme.headline3!.color)
                  .marginOnly(right: 20),
            ),
            SvgPicture.asset(AppAsset.video,
                    color: context.textTheme.headline3!.color)
                .marginOnly(right: 30),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(child: ListView(
            children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(AppAsset.msg3),
                      height: 40,
                    ),
                    Text(
                      AppText.hafizur,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: AppFontFamily.carosfont,
                          color: context.textTheme.headline3!.color),
                    ).marginOnly(left: 7),
                  ],
                ).marginOnly(top: 15, left: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 36,
                      width: 184,
                      decoration: BoxDecoration(
                        color: context.theme.hoverColor,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(13),
                            bottomLeft: Radius.circular(13),
                            bottomRight: Radius.circular(13)),
                      ),
                      child: Center(
                        child: Text(AppText.haveagreat,
                            style: TextStyle(
                              fontFamily: AppFontFamily.circularfont,
                              color: context.textTheme.headline3!.color,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            )),
                      ),
                    ),
                    Text(AppText.time,
                        style: TextStyle(
                          fontFamily: AppFontFamily.circularfont,
                          color: const Color(0xff797C7B),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        )).marginOnly(top: 7),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(AppAsset.msg1),
                      height: 40,
                    ),
                    Text(
                      AppText.majharul,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: AppFontFamily.carosfont,
                          color: context.textTheme.headline3!.color),
                    ).marginOnly(left: 7),
                  ],
                ).marginOnly(top: 15, left: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 36,
                      width: 164,
                      decoration: BoxDecoration(
                        color: context.theme.hoverColor,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(13),
                          bottomLeft: Radius.circular(13),
                          bottomRight: Radius.circular(13),
                        ),
                      ),
                      child: Center(
                        child: Text(AppText.thisismy,
                            style: TextStyle(
                              fontFamily: AppFontFamily.circularfont,
                              color: context.textTheme.headline3!.color,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            )),
                      ),
                    ),
                    Image(image: AssetImage(AppAsset.rectangle))
                        .marginOnly(top: 10),
                    Text(AppText.time,
                        style: TextStyle(
                          fontFamily: AppFontFamily.circularfont,
                          color: const Color(0xff797C7B),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        )).marginOnly(top: 7),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(AppAsset.msg4),
                      height: 40,
                    ),
                    Text(
                      AppText.annei,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: AppFontFamily.carosfont,
                          color: context.textTheme.headline3!.color),
                    ).marginOnly(left: 7),
                  ],
                ).marginOnly(top: 15, left: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 38,
                      width: 225,
                      decoration: BoxDecoration(
                        color: context.theme.hoverColor,
                        // ignore: prefer_const_constructors
                        borderRadius: BorderRadius.only(
                            topRight: const Radius.circular(0),
                            bottomLeft: const Radius.circular(13),
                            bottomRight: const Radius.circular(13),
                            topLeft: const Radius.circular(13)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(AppAsset.audioplay),
                          SvgPicture.asset(AppAsset.audio),
                          Center(
                            child: Text(AppText.second,
                                style: TextStyle(
                                  fontFamily: AppFontFamily.circularfont,
                                  color: context.textTheme.headline3!.color,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                )),
                          ),
                        ],
                      ).marginOnly(left: 10, right: 10),
                    ),
                    Text(AppText.time,
                        style: TextStyle(
                          fontFamily: AppFontFamily.circularfont,
                          color: const Color(0xff797C7B),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        )).marginOnly(top: 7),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      AppText.you,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: AppFontFamily.carosfont,
                          color: context.textTheme.headline3!.color),
                    ).marginOnly(right: 7),
                    Image(
                      image: AssetImage(AppAsset.msg4),
                      height: 40,
                    ).marginOnly(right: 20),
                  ],
                ).marginOnly(top: 30, left: 20),
                Column(
                  children: [
                    Container(
                      height: 38,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: Color(0xffE9B337),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(0),
                            bottomLeft: Radius.circular(13),
                            bottomRight: Radius.circular(13),
                            topLeft: Radius.circular(13)),
                      ),
                      child: Center(
                        child: Text(AppText.youdidyour,
                            style: TextStyle(
                              fontFamily: AppFontFamily.circularfont,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            )),
                      ),
                    ).marginOnly(left: 50),
                    Text(AppText.time,
                        style: TextStyle(
                          fontFamily: AppFontFamily.circularfont,
                          color: const Color(0xff797C7B),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        )).marginOnly(top: 7, right: 35),
                  ],
                ),
              ],
            ),
          ],)),
          Divider().marginOnly(top: 2, bottom: 2),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  showModalBottomSheet<void>(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25.0),
                      ),
                    ),
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.65,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color: context.textTheme.headline3!.color,
                                  ),
                                ),
                                Text(AppText.share,
                                    style: TextStyle(
                                      fontFamily: AppFontFamily.carosfont,
                                      color:
                                          context.textTheme.headline3!.color,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    )).marginOnly(left: 30),
                                const SizedBox(
                                  height: 50,
                                  width: 50,
                                ),
                              ],
                            ).marginOnly(left: 20, right: 20),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: Container(
                                    width: 52,
                                    height: 52,
                                    decoration: BoxDecoration(
                                        color: context.theme.hoverColor,
                                        shape: BoxShape.circle),
                                    child: SvgPicture.asset(
                                      image[index].toString(),
                                      color:
                                          context.textTheme.headline3!.color,
                                    ).marginAll(15),
                                  ),
                                  title: Text(name[index],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: AppFontFamily.carosfont,
                                          color: context
                                              .textTheme.headline3!.color,
                                          fontWeight: FontWeight.w500)),
                                  subtitle: Text(subname[index],
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily:
                                              AppFontFamily.circularfont,
                                          color: const Color(0xff797C7B),
                                          fontWeight: FontWeight.w400)),
                                );
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: SvgPicture.asset(AppAsset.group,
                    color: context.textTheme.headline3!.color),
              ),
              SizedBox(width: 10,),
              Expanded(
                  child: SizedBox(
                height: 40,
                width: 216,
                child: TextFormField(
                  onTap: () {

                  },
                  style: TextStyle(

                      color: context.textTheme.headline1!.color,
                      fontSize: 12),
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: AppText.write,
                    suffixIcon: SvgPicture.asset(AppAsset.files).marginAll(8),
                    suffixIconColor: const Color(0xff0D6EFD),
                    hintStyle: TextStyle(
                        fontFamily: AppFontFamily.carosfont,
                        color: context.textTheme.headline3!.color),
                    fillColor: context.theme.hoverColor,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              )),
              SvgPicture.asset(AppAsset.camera,
                      color: context.textTheme.headline3!.color)
                  .marginOnly(left: 10),
              SvgPicture.asset(AppAsset.microphone,
                      color: context.textTheme.headline3!.color)
                  .marginOnly(left: 10),
            ],
          ).marginOnly(top: 10, right: 20, bottom: 20, left: 20),
        ],
      ),
    );
  }
}
