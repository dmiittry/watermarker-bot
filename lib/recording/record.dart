import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flyapp/const/colors.dart';
import 'package:flyapp/const/provider.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:translator/translator.dart';

class TextRecording extends StatefulWidget {
  @override
  State<TextRecording> createState() => _TextRecordingState();
}

class _TextRecordingState extends State<TextRecording> {
  bool textScanning = false;

  XFile? imageFile;

  String scannedText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Сканирование изображения",
                  style: TextStyle(
                      color: blue900,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                if (textScanning) const CircularProgressIndicator(),
                if (!textScanning && imageFile == null)
                  Container(
                    width: 300,
                    height: 300,
                    color: Colors.grey[300]!,
                  ),
                if (imageFile != null) Image.file(File(imageFile!.path)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.only(top: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.grey,
                            shadowColor: Colors.grey[400],
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                          ),
                          onPressed: () {
                            getImage(ImageSource.gallery);
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.image,
                                  size: 30,
                                ),
                                Text(
                                  "Галерея",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey[600]),
                                )
                              ],
                            ),
                          ),
                        )),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.only(top: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.grey,
                            shadowColor: Colors.grey[400],
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                          ),
                          onPressed: () {
                            getImage(ImageSource.camera);
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.camera_alt,
                                  size: 30,
                                ),
                                Text(
                                  "Камера",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey[600]),
                                )
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // Container(
                //   child: Text(
                //     scannedText,
                //     style: TextStyle(fontSize: 20),
                //   ),
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                Center(
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(blue500)),
                      onPressed: () => Navigator.pop(context),
                      child: Container(
                          alignment: Alignment.center,
                          width: 250,
                          height: 30,
                          child: Text(
                            'Отменить',
                            textAlign: TextAlign.center,
                          ))),
                )
              ],
            )),
      )),
    );
  }

  void getImage(ImageSource source) async {
    try {
      final pickedImage = await ImagePicker().pickImage(source: source);
      if (pickedImage != null) {
        textScanning = true;
        imageFile = pickedImage;
        setState(() {});
        getRecognisedText(pickedImage);
      }
    } catch (e) {
      textScanning = false;
      imageFile = null;
      scannedText = "Ошибка сканирования";
      setState(() {});
    }
  }

  void getRecognisedText(XFile image) async {
    final inputImage = InputImage.fromFilePath(image.path);
    final textDetector = GoogleMlKit.vision.textDetector();
    RecognisedText recognisedText = await textDetector.processImage(inputImage);
    await textDetector.close();
    scannedText = "";
    for (TextBlock block in recognisedText.blocks) {
      for (TextLine line in block.lines) {
        scannedText = scannedText + line.text + "\n";
      }
    }
    var passport1 = scannedText.split('\n').lastIndexWhere((e) => e == 'UZB');
    var surname1 = scannedText.split('\n').lastIndexWhere((e) =>
        e.startsWith('FAMILYAS/SURNAME') ||
        e.startsWith("FAMILYASI/SURNAME") ||
        e.startsWith('FAMILYASI') ||
        e.startsWith('FAMILYA') ||
        e.startsWith('FAMILIYA'));
    var name1 = scannedText.split('\n').lastIndexWhere((e) =>
        e.startsWith('1SMI/GIVEN NAMES') ||
        e.startsWith('ISMI/GIVEN NAMES') ||
        e.startsWith('GIVEN') ||
        e.startsWith('SMGIVEN') ||
        e.startsWith('SMGVEN'));
    var bd1 = scannedText.split('\n').lastIndexWhere((e) =>
        e.startsWith('TUGILGAN SANASI/') ||
        e.startsWith('TUGILGAN SANASI /') ||
        e.startsWith('SANASI/') ||
        e.startsWith('SANASI /') ||
        e.startsWith('SANASI'));
    var date1 = scannedText.split('\n').indexWhere((e) =>
        e.startsWith('CENTR/') ||
        e.startsWith('MUDDATI /') ||
        e.startsWith('MUDDATL/') ||
        e.startsWith('MAL OILISH MUDDAT') ||
        e.startsWith('AMAL OILISH MUDDATI') ||
        e.startsWith('AMAL OILISH MUDDAT'));
    var srok1 = 0;
    for (int i = 1; i < 5; i++) {
      scannedText.split('\n')[date1 + i].length == 10 ? srok1 = i : null;
    }
    var newRecord = {
      'passport': scannedText.split('\n')[passport1 + 1].length > 12
          ? ''
          : '${scannedText.split('\n')[passport1 + 1]}',
      'surname': '${scannedText.split('\n')[surname1 + 1]}',
      'name': '${scannedText.split('\n')[name1 + 1]}',
      'bd': scannedText
                  .split('\n')[bd1 + 1]
                  .toString()
                  .replaceAll(' ', '.')
                  .length >
              11
          ? '${scannedText.split('\n')[bd1 + 1].toString().replaceAll(' ', '.')}'
          : '',
      'srok': scannedText
                  .split('\n')[date1 + srok1]
                  .toString()
                  .replaceAll(' ', '.')
                  .length >
              11
          ? ''
          : '${scannedText.split('\n')[date1 + srok1].toString().replaceAll(' ', '.')}',
    };
    Provider.of<Prov>(context, listen: false).setRecording(newRecord, 1000);
    textScanning = false;
    setState(() {});
    var geter = Provider.of<Prov>(context, listen: false).recording;
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              actions: [
                CupertinoDialogAction(
                    child: Text('Ок'),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    })
              ],
              title: Text(
                'Результаты сканирования:',
                style: TextStyle(
                    color: blue900, fontSize: 20, fontWeight: FontWeight.w600),
              ),
              content: Wrap(
                children: [
                  Center(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Номер паспорта: ${geter['passport'] == '' ? 'Не удалось' : geter['passport']}',
                        style: TextStyle(
                            color: blue500,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Фамилия: ${geter['surname'] == '' ? 'Не удалось' : geter['surname']}',
                        style: TextStyle(
                            color: blue500,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Имя: ${geter['name'] == '' ? 'Не удалось' : geter['name']}',
                        style: TextStyle(
                            color: blue500,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Дата рождения: ${geter['bd'] == '' ? 'Не удалось' : geter['bd']}',
                        style: TextStyle(
                            color: blue500,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Срок паспорта: ${geter['srok'] == '' ? 'Не удалось' : geter['srok']}',
                        style: TextStyle(
                            color: blue500,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Пожалуйста проверьте данные!',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )),
                ],
              ),
            ));
  }

  @override
  void initState() {
    super.initState();
  }
}
