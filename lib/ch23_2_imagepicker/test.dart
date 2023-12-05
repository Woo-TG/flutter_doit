import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const NativePlugWidget(),
    );
  }
}

class NativePlugWidget extends StatefulWidget {
  const NativePlugWidget({super.key});

  @override
  State<NativePlugWidget> createState() => _NativePlugWidgetState();
}

class _NativePlugWidgetState extends State<NativePlugWidget> {
  XFile? _image;

  Future getGalleryImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  Future getCameraImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Picker'),),
      body: Container(
        color: Colors.indigo,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: getGalleryImage,
                  child: const Text('gallery')
              ),
              Center(
                child: _image == null
                ? const Text('No image selected', style: TextStyle(color: Colors.white))
                : CircleAvatar(backgroundImage: FileImage(File(_image!.path)), radius: 100,)
              ),
              ElevatedButton(
                  onPressed: getCameraImage,
                  child: const Text('camera')
              )
            ],
          ),
        ),
      ),
    );
  }
}

