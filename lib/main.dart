// // // import 'package:flutter/material.dart';
// // // import 'package:sap_db_lib/sap_db_lib.dart';

// // // void main() {
// // //   runApp(const MyApp());
// // // }

// // // class MyApp extends StatelessWidget {
// // //   const MyApp({super.key});

// // //   // This widget is the root of your application.
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       title: 'Flutter Demo',
// // //       theme: ThemeData(
// // //         // This is the theme of your application.
// // //         //
// // //         // TRY THIS: Try running your application with "flutter run". You'll see
// // //         // the application has a purple toolbar. Then, without quitting the app,
// // //         // try changing the seedColor in the colorScheme below to Colors.green
// // //         // and then invoke "hot reload" (save your changes or press the "hot
// // //         // reload" button in a Flutter-supported IDE, or press "r" if you used
// // //         // the command line to start the app).
// // //         //
// // //         // Notice that the counter didn't reset back to zero; the application
// // //         // state is not lost during the reload. To reset the state, use hot
// // //         // restart instead.
// // //         //
// // //         // This works for code too, not just values: Most code changes can be
// // //         // tested with just a hot reload.
// // //         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
// // //         useMaterial3: true,
// // //       ),
// // //       home: const MyHomePage(title: 'Flutter Demo Home Page'),
// // //     );
// // //   }
// // // }

// // // class MyHomePage extends StatefulWidget {
// // //   const MyHomePage({super.key, required this.title});

// // //   // This widget is the home page of your application. It is stateful, meaning
// // //   // that it has a State object (defined below) that contains fields that affect
// // //   // how it looks.

// // //   // This class is the configuration for the state. It holds the values (in this
// // //   // case the title) provided by the parent (in this case the App widget) and
// // //   // used by the build method of the State. Fields in a Widget subclass are
// // //   // always marked "final".

// // //   final String title;

// // //   @override
// // //   State<MyHomePage> createState() => _MyHomePageState();
// // // }

// // // class _MyHomePageState extends State<MyHomePage> {
// // //   int _counter = 0;

// // //   Calculator cal = Calculator();

// // //   void _incrementCounter() {
// // //     setState(() {
// // //       // This call to setState tells the Flutter framework that something has
// // //       // changed in this State, which causes it to rerun the build method below
// // //       // so that the display can reflect the updated values. If we changed
// // //       // _counter without calling setState(), then the build method would not be
// // //       // called again, and so nothing would appear to happen.
// // //       _counter++;
// // //     });
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     // This method is rerun every time setState is called, for instance as done
// // //     // by the _incrementCounter method above.
// // //     //
// // //     // The Flutter framework has been optimized to make rerunning build methods
// // //     // fast, so that you can just rebuild anything that needs updating rather
// // //     // than having to individually change instances of widgets.
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         // TRY THIS: Try changing the color here to a specific color (to
// // //         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
// // //         // change color while the other colors stay the same.
// // //         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
// // //         // Here we take the value from the MyHomePage object that was created by
// // //         // the App.build method, and use it to set our appbar title.
// // //         title: Text(widget.title),
// // //       ),
// // //       body: Center(
// // //         // Center is a layout widget. It takes a single child and positions it
// // //         // in the middle of the parent.
// // //         child: Column(
// // //           // Column is also a layout widget. It takes a list of children and
// // //           // arranges them vertically. By default, it sizes itself to fit its
// // //           // children horizontally, and tries to be as tall as its parent.
// // //           //
// // //           // Column has various properties to control how it sizes itself and
// // //           // how it positions its children. Here we use mainAxisAlignment to
// // //           // center the children vertically; the main axis here is the vertical
// // //           // axis because Columns are vertical (the cross axis would be
// // //           // horizontal).
// // //           //
// // //           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
// // //           // action in the IDE, or press "p" in the console), to see the
// // //           // wireframe for each widget.
// // //           mainAxisAlignment: MainAxisAlignment.center,
// // //           children: <Widget>[
// // //             Text(cal.addOne(9).toString()),
// // //            // Text(hello.getMessage()),
// // //             const Text(
// // //               'You have pushed the button this many times:',
// // //             ),
// // //             Text(
// // //               '$_counter',
// // //               style: Theme.of(context).textTheme.headlineMedium,
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //       floatingActionButton: FloatingActionButton(
// // //         onPressed: _incrementCounter,
// // //         tooltip: 'Increment',
// // //         child: const Icon(Icons.add),
// // //       ), // This trailing comma makes auto-formatting nicer for build methods.
// // //     );
// // //   }
// // // }

// // // CameraDescription frontCamera = cameras.firstWhere(
// // // (camera) => camera.lensDirection == CameraLensDirection.front);

// // import 'dart:async';
// // import 'dart:developer';
// // import 'dart:io';
// // import 'dart:typed_data';

// // import 'package:camera/camera.dart';
// // import 'package:flutter/material.dart';
// // import 'package:image_picker/image_picker.dart';

// // Future<void> main() async {
// //   // Ensure that plugin services are initialized so that `availableCameras()`
// //   // can be called before `runApp()`
// //   WidgetsFlutterBinding.ensureInitialized();
// //   // Obtain a list of the available cameras on the device.
// //   final cameras = await availableCameras();

// //   // Get a specific camera from the list of available cameras.
// //   final firstCamera = cameras.firstWhere((camera) => camera.lensDirection == CameraLensDirection.front);

// //   runApp(const PickImage());
// // }

// // class PickImage extends StatefulWidget {
// //   const PickImage({super.key});

// //   @override
// //   State<PickImage> createState() => _PickImageState();
// // }

// // class _PickImageState extends State<PickImage> {
// //   Uint8List? _image;
// //   File? selectedIMage;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.deepPurple[100],
// //       body: Center(
// //         child: Stack(
// //           children: [
// //             _image != null
// //                 ? CircleAvatar(radius: 100, backgroundImage: MemoryImage(_image!))
// //                 : const CircleAvatar(
// //                     radius: 100,
// //                     backgroundImage:
// //                         NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"),
// //                   ),
// //             Positioned(
// //                 bottom: -0,
// //                 left: 140,
// //                 child: IconButton(
// //                     onPressed: () {
// //                       showImagePickerOption(context);
// //                     },
// //                     icon: const Icon(Icons.add_a_photo)))
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   void showImagePickerOption(BuildContext context) {
// //     showModalBottomSheet(
// //         backgroundColor: Colors.blue[100],
// //         context: context,
// //         builder: (builder) {
// //           return Padding(
// //             padding: const EdgeInsets.all(18.0),
// //             child: SizedBox(
// //               width: MediaQuery.of(context).size.width,
// //               height: MediaQuery.of(context).size.height / 4.5,
// //               child: Row(
// //                 children: [
// //                   Expanded(
// //                     child: InkWell(
// //                       onTap: () {
// //                         _pickImageFromGallery();
// //                       },
// //                       child: const SizedBox(
// //                         child: Column(
// //                           children: [
// //                             Icon(
// //                               Icons.image,
// //                               size: 70,
// //                             ),
// //                             Text("Gallery")
// //                           ],
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                   Expanded(
// //                     child: InkWell(
// //                       onTap: () {
// //                         _pickImageFromCamera();
// //                       },
// //                       child: const SizedBox(
// //                         child: Column(
// //                           children: [
// //                             Icon(
// //                               Icons.camera_alt,
// //                               size: 70,
// //                             ),
// //                             Text("Camera")
// //                           ],
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           );
// //         });
// //   }

// // //Gallery
// //   Future _pickImageFromGallery() async {
// //     final returnImage = await ImagePicker().pickImage(source: ImageSource.gallery);
// //     if (returnImage == null) return;
// //     setState(() {
// //       selectedIMage = File(returnImage.path);
// //       _image = File(returnImage.path).readAsBytesSync();
// //     });
// //     Navigator.of(context).pop(); //close the model sheet
// //   }

// // //Camera
// //   Future _pickImageFromCamera() async {
// //     final returnImage = await ImagePicker().pickImage(source: ImageSource.camera);
// //     if (returnImage == null) return;
// //     setState(() {
// //       selectedIMage = File(returnImage.path);
// //       _image = File(returnImage.path).readAsBytesSync();
// //     });
// //     Navigator.of(context).pop();
// //   }
// // }


// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
// import 'package:path_provider/path_provider.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   final cameras = await availableCameras();
//   final frontCamera = cameras.firstWhere(
//       (camera) => camera.lensDirection == CameraLensDirection.front);

//   runApp(MyApp(frontCamera: frontCamera));
// }

// class MyApp extends StatelessWidget {
//   final CameraDescription frontCamera;

//   const MyApp({Key? key, required this.frontCamera}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: TakePictureScreen(camera: frontCamera),
//     );
//   }
// }

// class TakePictureScreen extends StatefulWidget {
//   final CameraDescription camera;

//   const TakePictureScreen({Key? key, required this.camera}) : super(key: key);

//   @override
//   _TakePictureScreenState createState() => _TakePictureScreenState();
// }

// class _TakePictureScreenState extends State<TakePictureScreen> {
//   late CameraController _controller;
//   late Future<void> _initializeControllerFuture;

//   @override
//   void initState() {
//     super.initState();
//     _controller = CameraController(
//       widget.camera,
//       ResolutionPreset.medium,
//     );

//     _initializeControllerFuture = _controller.initialize();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   Future<void> _takePicture() async {
//     try {
//       await _initializeControllerFuture;
//       final directory = await getTemporaryDirectory();
//       final imagePath = '${directory.path}/image_${DateTime.now()}.png';

//       await _controller.takePicture().then((XFile file) {
//         File(file.path).copy(imagePath);
//       });

//       // Navigate to the preview screen with the captured image path
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => PreviewScreen(imagePath: imagePath),
//         ),
//       );
//     } catch (e) {
//       print(e);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Take a picture')),
//       body: FutureBuilder<void>(
//         future: _initializeControllerFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return CameraPreview(_controller);
//           } else {
//             return Center(child: CircularProgressIndicator());
//           }
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _takePicture,
//         child: Icon(Icons.camera),
//       ),
//     );
//   }
// }

// class PreviewScreen extends StatelessWidget {
//   final String imagePath;

//   const PreviewScreen({Key? key, required this.imagePath}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Preview')),
//       body: Center(
//         child: Image.file(File(imagePath)),
//       ),
//     );
//   }
// }

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final frontCamera = cameras.firstWhere(
      (camera) => camera.lensDirection == CameraLensDirection.front);

  runApp(MaterialApp(
    home: TakePictureScreen(camera: frontCamera),
  ));
}

class TakePictureScreen extends StatefulWidget {
  final CameraDescription camera;

  const TakePictureScreen({Key? key, required this.camera}) : super(key: key);

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _takePictureAndNavigate() async {
    try {
      await _initializeControllerFuture;
      final XFile file = await _controller.takePicture();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DisplayPictureScreen(imagePath: file.path),
        ),
      );
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Take a selfie')),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CameraPreview(_controller);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _takePictureAndNavigate,
        child: Icon(Icons.camera),
      ),
    );
  }
}

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({Key? key, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Display Picture')),
      body: Center(
        child: Image.file(File(imagePath)),
      ),
    );
  }
}

