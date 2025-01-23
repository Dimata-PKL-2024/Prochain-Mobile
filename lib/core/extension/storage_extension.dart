import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageExtension {
  void initStorage() async {
    await GetStorage.init('Dimata');
    await SharedPreferences.getInstance();
  }
}