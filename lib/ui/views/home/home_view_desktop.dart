import 'package:flutter/material.dart';

import '../../../app/configs.dart';
import '../../../app/icons.dart';
import '../../../core/utils/ScreenUiHelper.dart';
import '../../widgets/icon_wrapper.dart';
import '../../widgets/translate_on_hover.dart';

import 'home_view_model.dart';

class HomeDesktopView extends StatelessWidget {
  final ScreenUiHelper? uiHelpers;
  final HomeViewModel? model;

  const HomeDesktopView({Key? key, this.uiHelpers, this.model})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: uiHelpers!.backgroundColor,
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(60),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/avatar.jpg',
                        width: 150,
                        height: 150,
                        color: uiHelpers!.textPrimaryColor,
                      ),
                      Text(
                        'Rakib Uddin',
                        style: uiHelpers!.title,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      TranslateOnHover(
                        child: TextButton(
                            onPressed: () => model!
                                .navigateToUrl(PersonalDetails.resumeLink),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Resume',
                                style: uiHelpers!.title,
                              ),
                            )),
                      ),
                      TranslateOnHover(
                        child: TextButton(
                            onPressed: () => model!
                                .navigateToUrl(PersonalDetails.whatsappLink),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Contact',
                                style: uiHelpers!.title,
                              ),
                            )),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: uiHelpers!.width! * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              "assets/images/android.png",
                              width: 40,
                              height: 40,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Mobile Developer",
                              style: uiHelpers!.title,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              "assets/images/android.png",
                              width: 40,
                              height: 40,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Web Developer",
                              style: uiHelpers!.title,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              "assets/images/android.png",
                              width: 40,
                              height: 40,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Backend Developer",
                              style: uiHelpers!.title,
                            ),
                          ],
                        ),
                      ]),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: uiHelpers!.width! * 0.3,
                        child: Text(
                          PersonalDetails.shortIntro,
                          style: uiHelpers!.body!.copyWith(
                              fontWeight: FontWeight.w400,
                              height: 2,
                              color: uiHelpers!.textPrimaryColor),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      IconWrrapper(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 12),
                        onTap: () =>
                            model!.navigateToUrl(SocialLinks.githubLink),
                        child: Row(
                          children: [
                            Icon(
                              ContactIcons.githubIcon,
                              color: uiHelpers!.textPrimaryColor,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Github',
                              style: uiHelpers!.buttonStyle,
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
