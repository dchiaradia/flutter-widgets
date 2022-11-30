library my_widgets;

import 'package:my_widgets/src/core/initialize.dart';
import 'package:my_widgets/src/utils/MyBox/my_box.dart';
import 'package:my_widgets/src/utils/MyHttp/my_http.dart';

export 'package:cached_network_image/cached_network_image.dart';
export 'package:badges/badges.dart';
export 'package:sliding_up_panel/sliding_up_panel.dart';
export 'package:dio/dio.dart';

export 'src/widgets/config.dart';
export 'src/widgets/myButtons/my_buttons.dart';
export 'src/widgets/myColors/my_colors.dart';
export 'src/widgets/myInputs/my_input.dart';
export 'src/widgets/myText/my_text.dart';
export 'src/widgets/myTiles/my_tile.dart';
export 'src/widgets/mySpaces/my_space.dart';
export 'src/widgets/myAvatar/my_avatar.dart';
export 'src/widgets/myMenu/my_menu.dart';
export 'src/widgets/myBottomSheet/my_bottom_sheet.dart';

class My {
  MyHttpClient httpClient = MyHttpClient();
  MyBox box = MyBox();

  initializeWithJson(String path) async {
    print('loadJsonSettings');
    await initalize().readJson(path);
  }
}
