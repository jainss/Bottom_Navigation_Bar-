import 'package:flutter/material.dart';

// // ignore: camel_case_types
// class about extends StatelessWidget {
//   const about({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.indigoAccent,
//       body: Center(
//         child: Container(
//           alignment: Alignment.center,
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           child: Text(
//             "About",
//             style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 100,
//                 color: Colors.redAccent),
//           ),
//         ),
//       ),
//     );
//   }
// }

// ignore: camel_case_types
class about extends StatefulWidget {
  const about({Key? key}) : super(key: key);

  @override
  _aboutState createState() => _aboutState();
}

// ignore: camel_case_types
class _aboutState extends State<about> with AutomaticKeepAliveClientMixin {
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
              color: Colors.greenAccent,
              height: listhight * 2,
              width: listwide * 7,
              child: Text(
                'About $index',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black26),
              ),
            ),
          );
        });
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
