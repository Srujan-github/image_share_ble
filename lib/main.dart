import 'package:image_share_ble/Pages/ShareImage.dart';
import 'package:image_share_ble/Pages/Blecode.dart';
import 'dart:async';
import 'dart:io';

// import 'dart:typed_data';
// import 'dart:ui' as ui;
import 'package:share_plus/share_plus.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/material.dart';
import 'package:image_share_ble/main.dart';

void main() {
  runApp(
  MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context)=>Myapp(),
      '/secondscreen':(context)=>FlutterBLEApp(),
      // '/thridscreen':(context)=>BleApp(),

    },
  ));
}
// class Myapp extends StatefulWidget {
//   // static GlobalKey _globalKey = GlobalKey();
//   const Myapp({Key? key}) : super(key: key);
//
//   @override
//   State<Myapp> createState() => _MyappState();
// }
//
// class _MyappState extends State<Myapp> {
//   @override
//  void initstate(){
//    super.initState();
//  }
//   @override
//   File? file;
//   List<String> images = [];
//   ImagePicker image = ImagePicker();
//
//   getImage() async {
//     var img = await ImagePicker.pickImage(source: ImageSource.gallery);
//     setState(() {
//      file = File(img!.path);
//       images.add(img.path);
//     });
//   }
//   void share(BuildContext context) async {
//
//       await Share.shareFiles(
//         images,
//
//       );
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//
//       debugShowCheckedModeBanner: false,
//
//
//       home: Scaffold(
//         appBar: AppBar(title: Text("Image Share",style: TextStyle(color: Colors.white ),
//         ),
//         centerTitle: true,
//       backgroundColor: Colors.blueAccent,
//           elevation: 0,
//
//         ),
//         body:  Container(
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//               Container(
//               height: 300,
//               width: 300,
//               color: Colors.black12,
//               child: file == null
//                   ? IconButton(
//                 onPressed: () {
//                   getImage();
//                 },
//                 icon: Icon(
//                   Icons.add,
//                 ),
//               )
//                   : Image.file(
//                 file!,
//                 fit: BoxFit.fill,
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//                  Directionality(
//                    textDirection: TextDirection.ltr,
//                    child: ElevatedButton.icon(
//                      onPressed: () {
//                        share(context);
//                      },
//                      label:Text(
//                        'Share Image',
//                        style: TextStyle(
//                          color: Colors.white,
//                          fontSize: 22,
//                        ),
//                      ) ,
//                      icon: Icon(Icons.share),
//                      style: ButtonStyle(
//
//                      ),
//
//                      ),
//                  ),
//                 SizedBox(height: 30,),
//                 ElevatedButton(onPressed: ()=>Navigator.pushNamed(context, '/secondscreen'
//                     ),   child: Text("BLE Configuration",style: TextStyle(
//                   fontSize: 20,
//                 ),),
//
//                 ),
//               ],
//             ),
//           ),
//         )
//       ),
//     );
//   }
// }


