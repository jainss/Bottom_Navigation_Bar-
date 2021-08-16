import 'dart:ui';

import 'package:flutter/material.dart';

// // ignore: camel_case_types
// class menu extends StatelessWidget {
//   const menu({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightGreenAccent,
//       body: Center(
//         child: Container(
//           alignment: Alignment.center,
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           child: Text(
//             "Menu",
//             style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 100,
//                 color: Colors.blueGrey),
//           ),
//         ),
//       ),
//     );
//   }
// }

// ignore: camel_case_types
class menu extends StatefulWidget {
  const menu({Key? key}) : super(key: key);

  @override
  _menuState createState() => _menuState();
}

// ignore: camel_case_types
class _menuState extends State<menu> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    var listhight = MediaQuery.of(context).size.height / 10;
    var listwide = MediaQuery.of(context).size.width / 10;
    return ListView.builder(
        itemCount: 30,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              alignment: Alignment.center,
              color: Colors.cyan,
              height: listhight * 2,
              width: listwide * 7,
              child: Text(
                'Menu $index',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.blueGrey),
              ),
            ),
          );
        });
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
