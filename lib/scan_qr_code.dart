import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';


class ScanQrCode extends StatefulWidget {
  const ScanQrCode({super.key});

  @override
  State<ScanQrCode> createState() => _ScanQrCodeState();
}

class _ScanQrCodeState extends State<ScanQrCode> {
  String scannedResult='';

  startscan()async{
    var result;
    try{
      result= await FlutterBarcodeScanner.scanBarcode(
          '#FFFFFF',
          'Cancel',
          true,
      ScanMode.QR );
    } on PlatformException catch(e){
      result= 'Failed to get platform version.';
      Get.snackbar('Error occured',e.toString());
    } if (!mounted)return ;
    setState(() {
      scannedResult=result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan QR Code'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ), body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child:
        Text("Scanned Value $scannedResult",
        textAlign: TextAlign.center,),
         ), SizedBox(height: 30,),
        Center(
          child: ElevatedButton(onPressed: (){
            startscan();
          }, child: Text("Start Scan",
          style: TextStyle(fontSize:20),),),
        ),
      ],
    ),
    );
  }
}
