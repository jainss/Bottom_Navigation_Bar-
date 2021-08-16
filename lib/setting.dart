import 'package:flutter/material.dart';

// // ignore: camel_case_types
// class setting extends StatelessWidget {
//   const setting({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white70,
//       body: Center(
//         child: Container(
//           alignment: Alignment.center,
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           child: Text(
//             "Settings",
//             style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 100,
//                 color: Colors.blueAccent),
//           ),
//         ),
//       ),
//     );
//   }
// }

// ignore: camel_case_types
class setting extends StatefulWidget {
  const setting({Key? key}) : super(key: key);

  @override
  _settingState createState() => _settingState();
}

// ignore: camel_case_types
class _settingState extends State<setting> with AutomaticKeepAliveClientMixin {
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
              color: Colors.blueAccent,
              height: listhight * 2,
              width: listwide * 7,
              child: Text(
                'setting $index',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.pinkAccent),
              ),
            ),
          );
        });
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
