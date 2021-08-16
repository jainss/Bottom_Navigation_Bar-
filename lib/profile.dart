import 'package:flutter/material.dart';

// // ignore: camel_case_types
// class profile extends StatelessWidget {
//   const profile({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.yellowAccent,
//       body: Center(
//         child: Container(
//           alignment: Alignment.center,
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           child: Text(
//             "Profile",
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
class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  _profileState createState() => _profileState();
}

// ignore: camel_case_types
class _profileState extends State<profile> with AutomaticKeepAliveClientMixin {
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
              color: Colors.yellowAccent,
              height: listhight * 2,
              width: listwide * 7,
              child: Text(
                'Profile $index',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.redAccent),
              ),
            ),
          );
        });
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
