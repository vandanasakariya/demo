import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:demo/theam/app_string.dart';
import 'package:demo/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/demo_controller.dart';
import '../../navigation_utils/navigation.dart';
import '../../navigation_utils/routes.dart';
import '../../navigation_utils/size_utils.dart';
import '../../theam/app_img.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final DemoController demoController = Get.find();
  bool _isObscure = true;
  bool firstvalue = false;
  bool secondvalue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () {
          exit(0);
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: SizeUtils.horizontalBlockSize * 7),
              child: Column(
                children: [
                  Form(key: demoController.formKey,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeUtils.horizontalBlockSize * 7),
                      child: Image.asset(
                        AppImage.loginImage,
                        alignment: Alignment.center,
                        height: SizeUtils.verticalBlockSize * 20,
                      ),
                    ),
                  ),
                  CustomText(
                      text: AppString.enter, fontSize: SizeUtils.fSize_15()),
                  CustomText(
                      text: AppString.toContinue,
                      fontSize: SizeUtils.fSize_15()),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: SizeUtils.horizontalBlockSize * 8),
                    child: Container(
                      width: SizeUtils.horizontalBlockSize * 85,
                      height: SizeUtils.verticalBlockSize * 13,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300, //New
                            blurRadius: 25.0,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: demoController.emailController,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.phone,
                                  color: Colors.black,
                                ),
                                hintText: AppString.enterMoEmail),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                                height: SizeUtils.verticalBlockSize * 0.1,
                                width: SizeUtils.horizontalBlockSize * 85,
                                color: Colors.grey.shade400),
                          ),
                          TextFormField(
                            controller: demoController.passController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.lock_open,
                                color: Colors.black,
                              ),
                              hintText: AppString.enterPassWord,
                              suffixIcon: IconButton(
                                hoverColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                iconSize: 23.0,
                                icon: Icon(
                                  _isObscure
                                      ? Icons.visibility_sharp
                                      : Icons.visibility_off_sharp,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: firstvalue,
                          onChanged: (val) {
                            setState(() {
                              firstvalue = val!;
                            });
                          }),
                      SizedBox(
                          child: AutoSizeText(AppString.privacyAndPolicy),
                          width: SizeUtils.horizontalBlockSize * 75),
                      // CustomText(text: AppString.privacyAndPolicy,)
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: secondvalue,
                          onChanged: (val) {
                            setState(() {
                              secondvalue = val!;
                            });
                          }),
                      SizedBox(
                          child: AutoSizeText(AppString.acceptTerms),
                          width: SizeUtils.horizontalBlockSize * 75),
                      // CustomText(text: AppString.privacyAndPolicy,)
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: SizeUtils.horizontalBlockSize * 5),
                    child: InkWell(
                      onTap: () {
                        Navigation.pushNamed(Routes.selectCountryPage);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: SizeUtils.verticalBlockSize * 40,
                        height: SizeUtils.verticalBlockSize * 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.purple.shade300,
                        ),
                        child: CustomText(
                          text: AppString.login,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){  Navigation.pushNamed(Routes.selectCountryPage);},
                    child: Container(
                      width: SizeUtils.verticalBlockSize * 40,
                      height: SizeUtils.verticalBlockSize * 6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Image.asset(AppImage.googleImage),
                              CustomText(
                                text: AppString.signInGoogle,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: SizeUtils.horizontalBlockSize*7),
                    child: InkWell(
                      onTap: (){  Navigation.pushNamed(Routes.selectCountryPage);},
                      child: Container(
                        width: SizeUtils.verticalBlockSize * 40,
                        height: SizeUtils.verticalBlockSize * 6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Image.asset(AppImage.appleImage),
                                CustomText(
                                  text: AppString.signInApple,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
