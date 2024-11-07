import 'package:flutter/material.dart';
import 'package:flutter_learn/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  LoginScreen(),
    );
  }
}



// class Button extends StatelessWidget {
//   const Button({super.key});
//
//   //text
//   //color
//   //click
//   //size
//   //padding
//   //margin
//   //shape
//   //shadow
//   //border
//   //icon
//   //disable
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(20),
//       child: TextButton.icon(
//           onPressed: () {
//             debugPrint("action Click");
//           },
//           icon: const Icon(
//             Icons.search,
//             size: 30,
//           ),
//           style: TextButton.styleFrom(
//               foregroundColor: Colors.blue,
//               backgroundColor: const Color(0xFFededed),
//               // minimumSize: const Size(200, 50),
//               padding: const EdgeInsets.all(10),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               disabledBackgroundColor: Colors.grey,
//               elevation: 40),
//           label: const Text('TextButton', style: TextStyle(fontSize: 20))),
//     );
//   }
// }

// class MyWiget extends StatelessWidget {
//   const MyWiget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Card(
//       margin: EdgeInsets.symmetric(vertical: 100),
//       color: Colors.amber,
//       child: Padding(
//         padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//         child: Text(
//           'Duc Nhat Nguyen',
//           style: TextStyle(fontSize: 20, color: Color(0xFFffffff)),
//         ),
//       ),
//     );
//   }
// }
//
// class MyPadingText extends StatelessWidget {
//   const MyPadingText({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         print('toi la toi');
//       },
//       child: const Card(
//         margin: EdgeInsets.all(10),
//         color: Colors.blue,
//         child: Padding(
//           padding: EdgeInsets.all(8.0),
//           child: Text('toi la duc'),
//         ),
//       ),
//     );
//   }
// }
//
// //!!!.RichText trong flutter
// // class MyWiget extends StatelessWidget {
// //   const MyWiget({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return RichText(
// //       text: const TextSpan(children: <TextSpan>[
// //         TextSpan(text: 'Hello'),
// //         TextSpan(
// //             text: ' Bold ',
// //             style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15)),
// //         TextSpan(text: 'world'),
// //       ],
// //         style: TextStyle(color: Colors.blue)
// //       ),
// //     );
// //   }
// // }
//
// // !!!.Text trong fluter
// // class MyWiget extends StatelessWidget {
// //   const MyWiget({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return const Text(
// //       'toi la qweqwewqewqjdgjagysdsakdkajshdkjsahdaskjhdkjashdkajshdksahdkajshkd'
// //       'jhaskxhaskjxhkashkawhkdahksakdjhasjktext2'
// //       'toi la qweqwewqewqjdgjagysdsakdkajshdkjsahdaskjhdkjashdkajshdksahdkajshkd'
// //       'jhaskxhaskjxhkashkawhkdahksakdjhasjktext2',
// //       textDirection: TextDirection.ltr,
// //       textAlign: TextAlign.justify,
// //       maxLines: 3,
// //       overflow: TextOverflow.ellipsis,
// //       //hien thi ...(ellipsis) khi text qua max line
// //       style: TextStyle(
// //         color: Color(0xFFed92ed),
// //         fontWeight: FontWeight.w100,
// //         fontFamily: 'Times New Roman',
// //         wordSpacing: 10,
// //         letterSpacing: 10,
// //         decoration: TextDecoration.lineThrough
// //       ),
// //     );
// //   }
// // }
//
// //!!!.State và setState trong flutter
// // class MyWiget2 extends StatefulWidget {
// //   const MyWiget2({super.key});
// //
// //   @override
// //   State<MyWiget2> createState() => _MyWiget2State();
// // }
// //
// // class _MyWiget2State extends State<MyWiget2> {
// //   //tao bien
// //   late bool _localLoading = true;
// //
// //   //khoi tao gia tri ban dau
// //   //va chay truoc ham build ben duoi
// //   @override
// //   void initState() {
// //     // TODO: implement initState
// //     Future.delayed(Duration(seconds: 3), () {
// //       setState(() {
// //         _localLoading = false;
// //       });
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     //widget = this. ben js
// //     return _localLoading
// //         ? const CircularProgressIndicator()
// //         : FloatingActionButton(
// //             onPressed: handleClick,
// //             child: const Text("Load lai di cu"),
// //           );
// //   }
// //
// //   void handleClick() {
// //     setState(() {
// //       _localLoading = true;
// //       Future.delayed(const Duration(seconds: 2), () {
// //         setState(() {
// //           _localLoading = false;
// //         });
// //       });
// //     });
// //   }
// // }
