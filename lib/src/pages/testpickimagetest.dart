import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class TestPickImage extends StatefulWidget {
  @override
  State<TestPickImage> createState() => _TestPickImageState();
}

class _TestPickImageState extends State<TestPickImage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ImagePicker _picker = ImagePicker();
  List<File> _selectedImages = [];

  Future<void> _pickImage(ImageSource source) async {
    try {
      final pickedFile = await _picker.pickImage(source: source);
      if (pickedFile != null) {
        setState(() {
          _selectedImages.add(File(pickedFile.path));
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => _pickImage(ImageSource.camera),
              child: Text('Pick from Camera'),
            ),
            ElevatedButton(
              onPressed: () => _pickImage(ImageSource.gallery),
              child: Text('Pick from Gallery'),
            ),
            SizedBox(height: 20),
            _selectedImages.isEmpty
                ? Text('No images selected.')
                : Wrap(
                    spacing: 8.0,
                    runSpacing: 8.0,
                    children: _selectedImages.map((image) {
                      return Image.file(
                        image,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      );
                    }).toList(),
                  ),
          ],
        ),
      ),
    );
  }
}
