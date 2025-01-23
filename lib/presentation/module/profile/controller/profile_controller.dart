// ignore_for_file: unnecessary_overrides, avoid_print, unnecessary_null_comparison

import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prochain/core/style/style.dart';
import 'package:prochain/core/utils/date_util.dart';

class ProfileController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  final ImagePicker imagePicker = ImagePicker();
  RxList listImagePatch = [].obs;
  RxList listImageName = [].obs;

  openMultipleGallery() async {
    var dataImage = await imagePicker.pickMultiImage(
      imageQuality: 65,
      requestFullMetadata: true,
    );
    if (dataImage != null) {
      for (XFile file in dataImage) {
        if (listImagePatch.isNotEmpty) {
          listImagePatch.clear();
          listImagePatch.add(file.path);
          if (file.name != null) {
            if (listImageName.isNotEmpty) {
              listImageName.clear();
              listImageName.add(
                  '${DateUtil.indonesianDateTime(date: DateTime.now().toString())}.jpg');
              Get.back();
            } else {
              listImageName.add(
                  '${DateUtil.indonesianDateTime(date: DateTime.now().toString())}.jpg');
              Get.back();
            }
          }
        } else {
          listImagePatch.add(file.path);
          if (file.name != null) {
            if (listImageName.isNotEmpty) {
              listImageName.clear();
              listImageName.add(
                  '${DateUtil.indonesianDateTime(date: DateTime.now().toString())}.jpg');
              Get.back();
            } else {
              listImageName.add(
                  '${DateUtil.indonesianDateTime(date: DateTime.now().toString())}.jpg');
              Get.back();
            }
          }
        }
      }

      print(listImageName);
      print(listImagePatch);
    } else {
      Fluttertoast.showToast(
        msg: 'Peringatan : Gambar tidak jadi diambil',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: colorBlack,
        textColor: colorWhite,
        fontSize: 12.0,
      );
      Get.back();
    }

    update();
  }

  openGallery() async {
    var dataImage = await imagePicker.pickMedia(
      imageQuality: 65,
      requestFullMetadata: true,
    );
    if (dataImage != null) {
      if (listImagePatch.isNotEmpty) {
        listImagePatch.clear();
        listImagePatch.add(dataImage.path);
        if (dataImage.name != null) {
          if (listImageName.isNotEmpty) {
            listImageName.clear();
            listImageName.add(
                '${DateUtil.indonesianDateTime(date: DateTime.now().toString())}.jpg');
            Get.back();
          } else {
            listImageName.add(
                '${DateUtil.indonesianDateTime(date: DateTime.now().toString())}.jpg');
            Get.back();
          }
        }
      } else {
        listImagePatch.add(dataImage.path);
        if (dataImage.name != null) {
          if (listImageName.isNotEmpty) {
            listImageName.clear();
            listImageName.add(
                '${DateUtil.indonesianDateTime(date: DateTime.now().toString())}.jpg');
            Get.back();
          } else {
            listImageName.add(
                '${DateUtil.indonesianDateTime(date: DateTime.now().toString())}.jpg');
            Get.back();
          }
        }
      }

      print(listImageName);
      print(listImagePatch);
    } else {
      Fluttertoast.showToast(
        msg: 'Peringatan : Gambar tidak jadi diambil',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: colorBlack,
        textColor: colorWhite,
        fontSize: 12.0,
      );
      Get.back();
    }

    update();
  }

  openCamera() async {
    var dataImage = await imagePicker.pickImage(
      imageQuality: 65,
      source: ImageSource.camera,
      preferredCameraDevice: CameraDevice.rear,
      requestFullMetadata: true,
    );
    if (dataImage != null) {
      if (listImagePatch.isNotEmpty) {
        listImagePatch.clear();
        listImagePatch.add(dataImage.path);
        if (dataImage.name != null) {
          if (listImageName.isNotEmpty) {
            listImageName.clear();
            listImageName.add(
                '${DateUtil.indonesianDateTime(date: DateTime.now().toString())}.jpg');
            Get.back();
          } else {
            listImageName.add(
                '${DateUtil.indonesianDateTime(date: DateTime.now().toString())}.jpg');
            Get.back();
          }
        }
      } else {
        listImagePatch.add(dataImage.path);
        if (dataImage.name != null) {
          if (listImageName.isNotEmpty) {
            listImageName.clear();
            listImageName.add(
                '${DateUtil.indonesianDateTime(date: DateTime.now().toString())}.jpg');
            Get.back();
          } else {
            listImageName.add(
                '${DateUtil.indonesianDateTime(date: DateTime.now().toString())}.jpg');
            Get.back();
          }
        }
      }

      print(listImageName);
      print(listImagePatch);
    } else {
      Fluttertoast.showToast(
        msg: 'Peringatan : Gambar tidak jadi diambil',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: colorBlack,
        textColor: colorWhite,
        fontSize: 12.0,
      );
      Get.back();
    }

    update();
  }
}
