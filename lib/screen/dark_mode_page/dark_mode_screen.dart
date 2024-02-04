import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/app_fontfamily.dart';
import '../../constant/app_text.dart';
import '../../dark_theme/theme_service.dart';

class DarkModeScreen extends StatefulWidget {
  const DarkModeScreen({Key? key}) : super(key: key);

  @override
  State<DarkModeScreen> createState() => _DarkModeScreenState();
}

class _DarkModeScreenState extends State<DarkModeScreen> {

  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: context.textTheme.headline5!.color,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               BackButton(  color: context.textTheme.headline3!.color,),
              Text(
                AppText.settings,
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
          ).marginOnly(top: 30, left: 0, right: 22),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppText.darkmode,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: context.textTheme.headline3!.color,
                  fontFamily: AppFontFamily.circularfont,
                ),
              ),
              CupertinoSwitch(
                activeColor: Colors.green,
                value: switchValue,
                onChanged: (value) {
                  setState(
                        () {
                      switchValue = value;
                      ThemeService().switchTheme();
                    },
                  );
                },
              ),
            ],
          ).marginOnly(top: 30, left: 22, right: 22),
        ],
      ),
    );
  }
}
