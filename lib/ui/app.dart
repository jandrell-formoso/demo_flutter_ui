import 'package:demo_flutter_ui/ui/ios/widgets/chat_list.dart';
import 'package:flutter/cupertino.dart';

class PlatformApp extends StatelessWidget {
  const PlatformApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Container(
        color: CupertinoColors.white,
        child: CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text("Chats"),
              backgroundColor: CupertinoColors.white,
            ),
            SliverFixedExtentList(
              itemExtent: 60.0,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: CupertinoColors.white,
                    child: ChatList(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
