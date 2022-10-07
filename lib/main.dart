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


    },
  ));
}
 


