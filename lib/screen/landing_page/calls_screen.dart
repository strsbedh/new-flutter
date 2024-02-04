import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant/app_asset.dart';
import '../../constant/app_fontfamily.dart';
import '../../constant/app_text.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  List name = [
    AppText.team,
    AppText.jhon,
    AppText.sabila,
    AppText.alex,
    AppText.jhon,
    AppText.jhon,
  ];

  List subname = [
    AppText.todayy930,
    AppText.todayy730,
    AppText.yesterday735,
    AppText.monday930,
    AppText.date3,
    AppText.monday930,
  ];

  List image = [
    AppAsset.msg1,
    AppAsset.msg2,
    AppAsset.msg3,
    AppAsset.msg4,
    AppAsset.msg1,
    AppAsset.msg2,
  ];

  List call = [
    AppAsset.callgreen,
    AppAsset.callgreen,
    AppAsset.callred,
    AppAsset.callpurple,
    AppAsset.callred,
    AppAsset.callpurple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.textTheme.headline4!.color,
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xff000E08),
                  border: Border.all(
                    width: 2,
                    color: context.theme.focusColor,
                  ),
                ),
                child: const Icon(Icons.search, color: Colors.white),
              ),
              Text(
                AppText.calls,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppFontFamily.carosfont),
              ),
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xff000E08),
                  border: Border.all(
                    width: 2,
                    color: context.theme.focusColor,
                  ),
                ),
                child: const Icon(Icons.add_call, color: Colors.white),
              ),
            ],
          ).marginOnly(top: 50, left: 22, right: 22),
          DraggableScrollableSheet(
            initialChildSize: 0.8,
            maxChildSize: 0.8,
            minChildSize: 0.8,
            builder: (context, scrollController) {
              return SingleChildScrollView(
                  controller: scrollController,
                  child: Container(
                    decoration: BoxDecoration(
                        color: context.theme.cardColor,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 13),
                            height: 5,
                            width: 30,
                            decoration: BoxDecoration(
                                color: const Color(0xffE6E6E6),
                                borderRadius: BorderRadius.circular(3))),
                        Row(
                          children: [
                            Text(AppText.recent,
                                style: TextStyle(
                                    color: context.textTheme.headline3!.color,
                                    fontSize: 20,
                                    fontFamily: AppFontFamily.carosfont,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ).marginOnly(top: 50, right: 22, left: 22),
                        ListView.builder(
                          itemCount: 6,
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Container(
                                  width: 52,
                                  height: 52,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle),
                                  child: Image(
                                      image: AssetImage(
                                          image[index].toString()))),
                              title: Text(name[index].toString(),
                                      style: TextStyle(
                                          color: context
                                              .textTheme.headline3!.color,
                                          fontSize: 20,
                                          fontFamily:
                                              AppFontFamily.carosfont,
                                          fontWeight: FontWeight.w500))
                                  .marginOnly(top: 5, bottom: 5),
                              subtitle: Row(
                                children: [
                                  SvgPicture.asset(call[index]),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(subname[index].toString(),
                                      style: TextStyle(
                                          color: const Color(0xff797C7B),
                                          fontSize: 12,
                                          fontFamily:
                                              AppFontFamily.carosfont,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                              trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    SvgPicture.asset(AppAsset.callicon,
                                        color: const Color(0xff989E9C),
                                        width: 20),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SvgPicture.asset(AppAsset.video,
                                        color: const Color(0xff989E9C))
                                  ]),
                            ).marginOnly(top: 5, bottom: 5);
                          },
                        ),
                      ],
                    ),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
