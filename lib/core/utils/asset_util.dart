class AssetUtil {
  static String assetPath = 'assets';
  static String? filePath;

  path({path}) {
    filePath = path;
    return getFullPath();
  }

  getFullPath() {
    String fullPath = getFilePath();
    return '$assetPath/$fullPath';
  }

  getFilePath() {
    return filePath;
  }
}
