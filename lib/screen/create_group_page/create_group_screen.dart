import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dotted_border/dotted_border.dart';
import '../../constant/app_asset.dart';
import '../../constant/app_fontfamily.dart';
import '../../constant/app_text.dart';
import '../../widgets/intro_button.dart';
import '../create_poll_page/create_poll_screen.dart';

class CreateGroupScreen extends StatefulWidget {
  const CreateGroupScreen({Key? key}) : super(key: key);

  @override
  State<CreateGroupScreen> createState() => _CreateGroupScreenState();
}

class _CreateGroupScreenState extends State<CreateGroupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.textTheme.headline5!.color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BackButton(color: context.textTheme.headline3!.color),
                Text(
                  AppText.creategroup,
                  style: TextStyle(
                      color: context.textTheme.headline3!.color,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: AppFontFamily.carosfont),
                ),
                const SizedBox(
                  height: 30,
                  width: 30,
                ),
              ],
            ).marginOnly(top: 30, left: 10, right: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(AppText.description,
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: AppFontFamily.circularfont,
                        color: const Color(0xff797C7B),
                        fontWeight: FontWeight.w500)),
              ],
            ).marginOnly(top: 20, left: 22, right: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(AppText.makegroup,
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: AppFontFamily.carosfont,
                        color: context.textTheme.headline3!.color,
                        fontWeight: FontWeight.w400)),
              ],
            ).marginOnly(top: 20, left: 22, right: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(AppText.forteam,
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: AppFontFamily.carosfont,
                        color: context.textTheme.headline3!.color,
                        fontWeight: FontWeight.w400)),
              ],
            ).marginOnly(top: 20, left: 22, right: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 107,
                  height: 38,
                  decoration: BoxDecoration(
                    color: context.theme.shadowColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      AppText.groupwork,
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: AppFontFamily.circularfont,
                          color: context.textTheme.headline3!.color,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 147,
                  height: 38,
                  decoration: BoxDecoration(
                    color: context.theme.shadowColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      AppText.teamrelationship,
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: AppFontFamily.circularfont,
                          color: context.textTheme.headline3!.color,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ).marginOnly(top: 20, left: 22, right: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(AppText.admin,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: AppFontFamily.carosfont,
                        color: const Color(0xff797C7B),
                        fontWeight: FontWeight.w500)),
              ],
            ).marginOnly(top: 30, left: 22, right: 22),
            ListTile(
              leading: CircleAvatar(
                maxRadius: 25,
                child: Image.asset(AppAsset.rashidkhan),
              ),
              title: Text(
                AppText.rashid,
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: AppFontFamily.carosfont,
                    color: context.textTheme.headline3!.color,
                    fontWeight: FontWeight.w600),
              ),
              subtitle: Text(AppText.admin,
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: AppFontFamily.circularfont,
                      color: const Color(0xff797C7B),
                      fontWeight: FontWeight.w400)),
            ).marginOnly(top: 5, left: 5, right: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  AppText.invited,
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: AppFontFamily.carosfont,
                      color: const Color(0xff797C7B),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ).marginOnly(top: 20, left: 22, right: 22),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  image: AssetImage(AppAsset.create1),
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Image(
                      image: AssetImage(AppAsset.create2),
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: context.theme.canvasColor,
                        shape: BoxShape.circle,
                        border: Border.all(color: context.theme.cardColor),
                      ),
                      child: Icon(Icons.add,
                          color: context.textTheme.headline3!.color, size: 20),
                    )
                  ],
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Image(
                      image: AssetImage(AppAsset.create3),
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: context.theme.canvasColor,
                        shape: BoxShape.circle,
                        border: Border.all(color: context.theme.cardColor),
                      ),
                      child: Icon(Icons.add,
                          color: context.textTheme.headline3!.color, size: 20),
                    )
                  ],
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Image(
                      image: AssetImage(AppAsset.create4),
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: context.theme.canvasColor,
                        shape: BoxShape.circle,
                        border: Border.all(color: context.theme.cardColor),
                      ),
                      child: Icon(Icons.add, color: context.textTheme.headline3!.color, size: 20),
                    )
                  ],
                ),
              ],
            ).marginOnly(top: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Image(
                      image: AssetImage(AppAsset.create5),
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: context.theme.canvasColor,
                        shape: BoxShape.circle,
                        border: Border.all(color: context.theme.cardColor),
                      ),
                      child: Icon(Icons.add,
                          color: context.textTheme.headline3!.color, size: 20),
                    )
                  ],
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Image(
                      image: AssetImage(AppAsset.create6),
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: context.theme.canvasColor,
                        shape: BoxShape.circle,
                        border: Border.all(color: context.theme.cardColor),
                      ),
                      child: Icon(Icons.add,
                          color: context.textTheme.headline3!.color, size: 20),
                    )
                  ],
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: DottedBorder(
                    dashPattern: const [10, 7],
                    color: const Color(0xffCFD3D2),
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(50),
                    child: const Center(
                      child:
                          Icon(Icons.add, color: Color(0xffCFD3D2), size: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: DottedBorder(
                    dashPattern: const [10, 7],
                    color: Colors.transparent,
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(50),
                    child: const Center(
                      child:
                          Icon(Icons.add, color: Colors.transparent, size: 20),
                    ),
                  ),
                ),
              ],
            ).marginOnly(top: 15),
            AppButton(
                    onTap: () {
                      Get.to(const CreatePollScreen(),transition: Transition.rightToLeft);
                    },
                    title: AppText.createe,
                    color: const Color(0xffE9B337),
                    colorfont: Colors.white,
                    height: 48,
                    width: 327,
                    fontfamily: AppFontFamily.carosfont).marginOnly(top: 50, bottom: 20),
          ],
        ),
      ),
    );
  }
}
