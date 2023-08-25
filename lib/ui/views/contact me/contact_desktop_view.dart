import 'package:flutter/material.dart';

import '../../../app/configs.dart';
import '../../../app/icons.dart';
import '../../../core/utils/ScreenUiHelper.dart';
import '../../widgets/fadeAnimation.dart';
import '../../widgets/icon_wrapper.dart';
import 'contact_view_model.dart';

class ContactDesktopView extends StatelessWidget {
  final ScreenUiHelper? uiHelpers;
  final ContactViewModel? model;

  const ContactDesktopView({Key? key, this.uiHelpers, this.model})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: uiHelpers!.backgroundColor,
      body: Form(
        key: model!.formKey,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Get In Touch!',
                ),
                const SizedBox(
                  height: 8,
                ),
                FadeAnimation(
                  xDistance: 0,
                  delay: 1,
                  yDistance: 10,
                  child: Text(
                    'Contact me for hiring,or help me to join your team',
                  ),
                ),
                uiHelpers!.verticalSpaceMedium,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FadeAnimation(
                        xDistance: 00,
                        yDistance: 20,
                        delay: 1.25,
                        child: IconWrrapper(
                          onTap: () =>
                              model!.navigateToSocial(SocialLinks.githubLink),
                          child: Icon(
                            ContactIcons.githubIcon,
                            color: uiHelpers!.textPrimaryColor,
                            size: 30,
                          ),
                        )),
                    FadeAnimation(
                        xDistance: 00,
                        yDistance: 20,
                        delay: 1.25,
                        child: IconWrrapper(
                          onTap: () =>
                              model!.navigateToSocial(SocialLinks.twitterLink),
                          child: Icon(
                            ContactIcons.twitterIcon,
                            color: uiHelpers!.textPrimaryColor,
                            size: 30,
                          ),
                        )),
                    FadeAnimation(
                        xDistance: 00,
                        yDistance: 20,
                        delay: 1.25,
                        child: IconWrrapper(
                          onTap: () =>
                              model!.navigateToSocial(SocialLinks.linkedinUrl),
                          child: Icon(
                            ContactIcons.linkedinIcon,
                            color: uiHelpers!.textPrimaryColor,
                            size: 30,
                          ),
                        )),
                  ],
                ),
                uiHelpers!.verticalSpaceMedium,
                FadeAnimation(
                  xDistance: 00,
                  yDistance: 25,
                  delay: 1.5,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 25),
                    width: uiHelpers!.width! * 0.6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Contact Form',
                        ),
                        uiHelpers!.verticalSpaceLow,
                        Row(
                          children: [
                            SizedBox(
                              width: uiHelpers!.width! * 0.3,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Your Name',
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    TextFormField(
                                      controller: model!.nameController,
                                      validator: (String? value) {
                                        if (value!.trim().isEmpty) {
                                          return 'Please Enter Name';
                                        }

                                        return null;
                                      },
                                      focusNode: model!.focusNodeMap['name'],
                                      keyboardType: TextInputType.name,
                                      decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            FormIcon.nameIcon,
                                            color: model!.hasFocusMap['name']!
                                                ? uiHelpers!.primaryColor
                                                : uiHelpers!.textPrimaryColor,
                                          ),
                                          hintText: 'Luffy San',
                                          hintStyle: TextStyle(
                                              color: uiHelpers!
                                                  .textSecondaryColor),
                                          border: InputBorder.none),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      'Your Email',
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    TextFormField(
                                      controller: model!.emailController,
                                      validator: (String? value) {
                                        if (value!.trim().isEmpty) {
                                          return 'Please Enter Email';
                                        } else if (!RegExp(
                                                r'^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$')
                                            .hasMatch(value)) {
                                          return 'Please enter valid email';
                                        }

                                        return null;
                                      },
                                      focusNode: model!.focusNodeMap['email'],
                                      keyboardType: TextInputType.name,
                                      decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            FormIcon.nameIcon,
                                            color: model!.hasFocusMap['email']!
                                                ? uiHelpers!.primaryColor
                                                : uiHelpers!.textPrimaryColor,
                                          ),
                                          hintText: 'youremail@gmail.com',
                                          hintStyle: TextStyle(
                                              color: uiHelpers!
                                                  .textSecondaryColor),
                                          border: InputBorder.none),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      'Subject',
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    TextFormField(
                                      controller: model!.subjectController,
                                      validator: (String? value) {
                                        if (value!.trim().isEmpty) {
                                          return 'Please Enter Subject';
                                        }

                                        return null;
                                      },
                                      focusNode: model!.focusNodeMap['subject'],
                                      keyboardType: TextInputType.name,
                                      decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            FormIcon.nameIcon,
                                            color: model!
                                                    .hasFocusMap['subject']!
                                                ? uiHelpers!.primaryColor
                                                : uiHelpers!.textPrimaryColor,
                                          ),
                                          hintText: 'Hiring for...',
                                          hintStyle: TextStyle(
                                              color: uiHelpers!
                                                  .textSecondaryColor),
                                          border: InputBorder.none),
                                    ),
                                  ]),
                            ),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Message',
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    TextFormField(
                                      controller: model!.bodyController,
                                      validator: (String? value) {
                                        if (value!.trim().isEmpty) {
                                          return 'Please Enter Message';
                                        }

                                        return null;
                                      },
                                      maxLines: 10,
                                      keyboardType: TextInputType.name,
                                      decoration: InputDecoration(
                                          alignLabelWithHint: true,
                                          hintStyle: TextStyle(
                                              color: uiHelpers!
                                                  .textSecondaryColor),
                                          hintText: 'Your Messsage..',
                                          border: InputBorder.none),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        uiHelpers!.verticalSpaceHigh,
                        FadeAnimation(
                          xDistance: 00,
                          delay: 2,
                          child: Container(
                              alignment: Alignment.center,
                              child: IconWrrapper(
                                onTap: () => model!.openMail(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      FormIcon.messageIcon,
                                      color: uiHelpers!.textPrimaryColor,
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      'Send Message',
                                      style: uiHelpers!.buttonStyle,
                                    )
                                  ],
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
