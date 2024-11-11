// import 'package:flutter/material.dart';
//
// class HomeScreen extends StatelessWidget {
//   HomeScreen({super.key});
//
//   Color mainColor = Color(0xff1F41BB);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 31.0),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 97,
//             ),
//             Text(
//               'Login here',
//               style: TextStyle(
//                   fontWeight: FontWeight.w700, fontSize: 30, color: mainColor),
//             ),
//             SizedBox(
//               height: 26,
//             ),
//             Text(
//               'Welcome back you’ve\nbeen missed!',
//               style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(
//               height: 74,
//             ),
//             TextFormField(
//               decoration: InputDecoration(
//                   enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide(color: mainColor, width: 2))),
//             ),
//             SizedBox(
//               height: 29,
//             ),
//             TextFormField(
//               decoration: InputDecoration(
//                   enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide(color: mainColor, width: 2))),
//             ),
//             Align(
//               alignment: Alignment.centerRight,
//               child: Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 30),
//                   child: Text(
//                     'Forgot your password?',
//                     style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w600,
//                         color: mainColor),
//                   )),
//             ),
//             Container(
//               height: 60,
//               width: double.infinity,
//               decoration: BoxDecoration(boxShadow: [
//                 BoxShadow(
//                     color: Color(0xffCBD6FF),
//                     offset: Offset(0, 10),
//                     blurRadius: 20)
//               ], color: mainColor, borderRadius: BorderRadius.circular(10)),
//               child: Center(
//                   child: Text(
//                 'Sign in',
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.w600,
//                     fontSize: 20),
//               )),
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             Text('Create new account'),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   void initState() {
//     print('_HomePageState.initState');
//     super.initState();
//   }
//   @override
//     dispose(){
//     super.dispose();
//     print('_HomePageState.dispose');
//   }
//   int counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     print('_HomePageState.build');
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // Center(
//           //   child: Text('$counter'),
//           // ),
//           Center(
//             child: InkWell(
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) {
//                     return SecPage();
//                   }));
//                 },
//                 child: Text('Button without')),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class SecPage extends StatelessWidget {
//   const SecPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: TextButton(onPressed: () {
//         Navigator.pop(context);
//       }, child: Center(
//           child: Text('Here Second Screen'))),
//     );
//   }
// }
