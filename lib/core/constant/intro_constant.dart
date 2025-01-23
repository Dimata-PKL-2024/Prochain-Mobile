import 'package:prochain/core/utils/asset_util.dart';
import 'package:prochain/data/model/intro/intro_model.dart';

final List<IntroModel> dataIntroConstant = [
  IntroModel(
    title: 'ProChain',
    description:
        "Aplikasi ProChain untuk master data, terintegasi ke sitem-sistem POS yg berkaitan dengan Inventory, dan sebagainya",
    image: AssetUtil().path(path: 'example/example-intro-1.png'),
  ),
  IntroModel(
    title: 'Mulai Aplikasi',
    description:
        "Gunakan aplikasi untuk memproses data-data yang terintegrasi pada ProChain. Terkait inventory, transaksi, storage, dan sebagainya",
    image: AssetUtil().path(path: 'example/example-intro-2.png'),
  ),
];
