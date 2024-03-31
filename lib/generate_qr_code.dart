import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQrCode extends StatefulWidget {
  const GenerateQrCode({super.key});

  @override
  State<GenerateQrCode> createState() => _GenerateQrCodeState();
}

class _GenerateQrCodeState extends State<GenerateQrCode> {
  TextEditingController value = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan QR Code'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ), body: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            value.text.isEmpty ?
                Container(): QrImageView(
              data: value.text,
              version: QrVersions.auto ,
            size: 200,),
            //  QrImageView(data: ,size: 200,),
            // SizedBox(height: 40,),
            Padding(
                padding: EdgeInsets.all(28),
            child: TextField(
              controller: value,
              decoration: InputDecoration(hintText: 'Enter value to generate Qr',),
            ),),
            Center(
              child: ElevatedButton(
                onPressed: (){
                  setState(() {

                  });
                }, child: const Padding(
                padding: EdgeInsets.all(8),
                child: Text("Generate QR",
                style: TextStyle(fontSize: 30,)),
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
