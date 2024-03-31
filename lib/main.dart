
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code/generate_qr_code.dart';
import 'package:qr_code/scan_qr_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'QR Code',
      debugShowCheckedModeBanner: false,
      home:const homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('QR CODE'),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ Center(
          child:ElevatedButton(onPressed: (){
               Get.to(ScanQrCode());
              }, child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Scan QR Code",
    style: TextStyle(fontSize: 30,),
          ),
        ),
      ),
      ), SizedBox(height: 50,),
      Center(
        child: ElevatedButton(onPressed:
    (){
          Get.to(GenerateQrCode());
    }, child: Padding(
    padding:const EdgeInsets.all(8.0),
    child: Text("Generate QR Code",
    style: TextStyle(fontSize: 30,),
        ),
      ),
      ),
    ), 
      ],
    ),
    ),
      ),
    );
  }
}
