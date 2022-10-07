import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class Myapp extends StatefulWidget {
  // static GlobalKey _globalKey = GlobalKey();
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  void initstate(){
    super.initState();
  }


  @override
  File? file;
  List<String> images = [];
  ImagePicker image = ImagePicker();

  getImage() async {
    var img = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      file = File(img!.path);
      images.add(img.path);
    });
  }
  void share(BuildContext context) async {

    await Share.shareFiles(
      images,

    );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,


      home: Scaffold(
          appBar: AppBar(title: Text("Image Share",style: TextStyle(color: Colors.white ),
          ),
            centerTitle: true,
            backgroundColor: Colors.blueAccent,
            elevation: 0,

          ),
          body:  Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 300,
                    width: 300,
                    color: Colors.black12,
                    child: file == null
                        ? IconButton(
                      onPressed: () {
                        getImage();
                      },
                      icon: Icon(
                        Icons.add,
                      ),
                    )
                        : Image.file(
                      file!,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        share(context);
                      },
                      label:Text(
                        'Share Image',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ) ,
                      icon: Icon(Icons.share),
                      style: ButtonStyle(

                      ),

                    ),
                  ),
                  SizedBox(height: 30,),
                  ElevatedButton(onPressed: ()=>Navigator.pushNamed(context, '/secondscreen'
                  ),   child: Text("BLE Configuration",style: TextStyle(
                    fontSize: 20,
                  ),),
                    
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
// class HomePage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home Page"),
//       ),
//       body: Center(
//           child: ElevatedButton(
//               child: Text("Click on Me"), //click me button
//               onPressed: (){
//                 Navigator.pushNamed(context, "/secondscreen");
//               }
//           )
//       ),
//     );
//   }
// }
//
// class SecondScreen extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Page"),
//       ),
//       body: Center(
//           child: ElevatedButton(
//               child: Text("Go Back"), //go back button
//               onPressed: (){
//                 Navigator.pop(context);
//               }
//           )
//       ),
//     );
//   }
// }





