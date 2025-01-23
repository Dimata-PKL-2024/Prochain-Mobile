import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prochain/core/config/routes.dart';
import 'package:prochain/core/style/style.dart';
import 'package:prochain/core/utils/asset_util.dart';
import 'package:prochain/presentation/module/auth/controller/auth_controller.dart';
import 'package:prochain/presentation/widget/form/form_text_widget.dart';

class FormAuthWidget extends GetResponsiveView<AuthController> {
  FormAuthWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Form(
        key: controller.authFormKey,
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: marginMd),
                    child: Column(
                      children: [
                        SizedBox(height: marginSm),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Selamat Datang',
                                    style: Get.textTheme.titleMedium!
                                        .merge(TextStyle(
                                      color: colorBlack,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    )),
                                  ),
                                  Text(
                                    'Silahkan login disini',
                                    style: Get.textTheme.bodyMedium!
                                        .merge(TextStyle(
                                      color: colorBlack,
                                      fontSize: 10,
                                    )),
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                              AssetUtil().path(path: 'logo/prochain.png'),
                              width: 76,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                        SizedBox(height: marginLg),
                        FormTextWidget(
                          textController: controller.inputUsername,
                          focusNode: controller.usernameFocus,
                          onFieldSubmitted: (term) {
                            controller.fieldFocusChange(
                                context,
                                controller.usernameFocus,
                                controller.passwordFocus);
                          },
                          validator: (String? value) =>
                              (value!.isEmpty) ? 'Masukkan username' : null,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          labelText: 'Username',
                          hintText: '',
                          suffixIcon: Icon(Icons.person, color: colorGreyDark),
                        ),
                        SizedBox(height: marginSm),
                        FormTextWidget(
                          textController: controller.inputPassword,
                          focusNode: controller.passwordFocus,
                          onFieldSubmitted: (term) {
                            controller.passwordFocus.unfocus();
                          },
                          obscureText: controller.isShowPassword.value,
                          validator: (String? value) =>
                              (value!.isEmpty) ? 'Masukkan password' : null,
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.text,
                          labelText: 'Password',
                          hintText: '',
                          suffixIcon: InkWell(
                            onTap: () => controller.visibilityPassword(),
                            child: Icon(
                              controller.isShowPassword.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: controller.isShowPassword.value
                                  ? colorGreyDark
                                  : colorButton,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Checkbox(
                              value: controller.isRememberMe.value,
                              onChanged: (value) {
                                controller.isRememberMe.value = value!;
                              },
                            ),
                            Text('Ingatkan Saya',
                                style: Get.textTheme.bodyMedium!.merge(
                                    TextStyle(
                                        color: colorBlack, fontSize: 12))),
                          ],
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          width: Get.width,
                          child: ElevatedButton(
                            onPressed: () {
                              if (controller.authFormKey.currentState!
                                  .validate()) {
                                if (controller.isRememberMe.value == false) {
                                  controller.storage.remove('username');
                                  controller.storage.remove('password');
                                  controller.storage.remove('rememberMe');
                                  Get.offAllNamed(homeRoute);
                                } else {
                                  controller.storage.write('username',
                                      controller.inputUsername.text);
                                  controller.storage.write('password',
                                      controller.inputPassword.text);
                                  controller.storage.write('rememberMe',
                                      controller.isRememberMe.value.toString());
                                  Get.offAllNamed(homeRoute);
                                }
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(marginXs),
                              backgroundColor:
                                  colorButton.withOpacity(0.75), //withvalue
                              elevation: 0.5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: borderRadiusXs),
                            ),
                            child: Text(
                              'Login',
                              style: Get.textTheme.titleMedium!.merge(TextStyle(
                                color: colorWhite,
                                fontSize: 12,
                              )),
                            ),
                          ),
                        ),
                        SizedBox(height: marginSm),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(marginMd),
              child: Column(
                children: [
                  InkWell(
                    onTap: () => Get.toNamed(authRegisterRoute),
                    child: RichText(
                      text: TextSpan(
                        text: 'Don\'t have an account ?',
                        style: Get.textTheme.bodyMedium,
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Sign up',
                            style: Get.textTheme.bodyMedium!
                                .merge(TextStyle(color: colorButton)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: marginXl * 2),
                  Text('A Product by',
                      style: Get.textTheme.bodySmall!
                          .merge(const TextStyle(fontSize: 10))),
                  Text('Dimata IT Solution',
                      style: Get.textTheme.titleSmall!
                          .merge(const TextStyle(fontSize: 12))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
