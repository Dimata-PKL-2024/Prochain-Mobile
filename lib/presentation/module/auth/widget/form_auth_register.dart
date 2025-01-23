import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:prochain/core/style/style.dart';
import 'package:prochain/presentation/module/auth/controller/auth_register_controller.dart';
import 'package:prochain/presentation/widget/form/form_text_widget.dart';

class FormAuthRegisterWidget extends GetResponsiveView<AuthRegisterController> {
  FormAuthRegisterWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Form(
        key: controller.authRegisterFormKey,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SizedBox(height: marginSm),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: marginMd),
                      child: FormTextWidget(
                        textController: controller.inputFullName,
                        focusNode: controller.fullNameFocus,
                        onFieldSubmitted: (term) {
                          controller.fullNameFocus.unfocus();
                        },
                        validator: (String? value) =>
                            (value!.isEmpty) ? 'Masukkan nama lengkap' : null,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.text,
                        labelText: 'Nama Lengkap',
                        hintText: '',
                      ),
                    ),
                    SizedBox(height: marginSm),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: marginMd),
                      child: FormTextWidget(
                        textController: controller.inputPhone,
                        focusNode: controller.phoneFocus,
                        onFieldSubmitted: (term) {
                          controller.phoneFocus.unfocus();
                        },
                        validator: (String? value) => (value!.isEmpty)
                            ? 'Masukkan nomor telepon'
                            : (value.length < 9)
                                ? 'Digit nomor telepon anda tidak lengkap'
                                : null,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        labelText: 'Nomor Telepon',
                        hintText: '',
                      ),
                    ),
                    SizedBox(height: marginSm),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: marginMd),
                      child: FormTextWidget(
                        textController: controller.inputAddress,
                        focusNode: controller.addressFocus,
                        onFieldSubmitted: (term) {
                          controller.addressFocus.unfocus();
                        },
                        validator: (String? value) =>
                            (value!.isEmpty) ? 'Masukkan alamat' : null,
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.multiline,
                        maxLines: 5,
                        labelText: 'Alamat',
                        hintText: '',
                      ),
                    ),
                    SizedBox(height: marginSm),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: marginMd),
                      child: FormTextWidget(
                        textController: controller.inputUsername,
                        focusNode: controller.usernameFocus,
                        onFieldSubmitted: (term) {
                          controller.usernameFocus.unfocus();
                        },
                        validator: (String? value) =>
                            (value!.isEmpty) ? 'Masukkan email' : null,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.emailAddress,
                        labelText: 'Email',
                        hintText: '',
                      ),
                    ),
                    SizedBox(height: marginSm),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: marginMd),
                      child: FormTextWidget(
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
                    ),
                    SizedBox(height: marginSm),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: marginMd),
                      child: FormTextWidget(
                        textController: controller.inputRePassword,
                        focusNode: controller.rePasswordFocue,
                        onFieldSubmitted: (term) {
                          controller.rePasswordFocue.unfocus();
                        },
                        obscureText: controller.isShowRePassword.value,
                        validator: (String? value) =>
                            (value!.isEmpty) ? 'Masukkan ulang password' : null,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.text,
                        labelText: 'Ulangi Password',
                        hintText: '',
                        suffixIcon: InkWell(
                          onTap: () => controller.visibilityRePassword(),
                          child: Icon(
                            controller.isShowRePassword.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: controller.isShowRePassword.value
                                ? colorGreyDark
                                : colorButton,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: marginSm),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(marginMd),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(marginXs),
                      backgroundColor: colorWhite,
                      elevation: 0.5,
                      shape: RoundedRectangleBorder(
                        borderRadius: borderRadiusXs,
                        side: BorderSide(color: colorButton),
                      ),
                    ),
                    child: Text(
                      'Cancel',
                      style: Get.textTheme.titleMedium!.merge(TextStyle(
                        color: colorButton,
                        fontSize: 12,
                      )),
                    ),
                  ),
                  SizedBox(width: marginXs),
                  ElevatedButton(
                    onPressed: () {
                      if (controller.authRegisterFormKey.currentState!
                          .validate()) {
                        if (controller.inputPassword.text !=
                            controller.inputRePassword.text) {
                          Fluttertoast.showToast(
                            msg:
                                'Peringatan, Password dan Ulangi Password tidak sama',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: colorBlack,
                            textColor: colorWhite,
                            fontSize: 12.0,
                          );
                        } else {
                          Get.back();
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(marginXs),
                      backgroundColor: colorButton.withOpacity(0.75), //withvalue
                      elevation: 0.5,
                      shape:
                          RoundedRectangleBorder(borderRadius: borderRadiusXs),
                    ),
                    child: Text(
                      'Register',
                      style: Get.textTheme.titleMedium!.merge(TextStyle(
                        color: colorWhite,
                        fontSize: 12,
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
