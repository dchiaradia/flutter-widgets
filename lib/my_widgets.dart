library my_widgets;

import 'package:my_widgets/src/core/initialize.dart';

export 'src/widgets/config.dart';
export 'src/widgets/myButtons/my_buttons.dart';
export 'src/widgets/myColors/my_colors.dart';
export 'src/widgets/myInputs/my_input.dart';
export 'src/widgets/myText/my_text.dart';
export 'src/widgets/myTiles/my_tile.dart';

class MyWidget {
  initializeWithJson(String path) async {
    print('loadJsonSettings');
    await initalize().readJson(path);
  }
}
