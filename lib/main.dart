import 'package:face_camera/face_camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snapface/face_scanner.dart';
import 'package:snapface/image_upload_page.dart';
import 'package:snapface/login_page.dart';
import 'package:snapface/register_page.dart';

// import 'package:firebase_ml_vision/firebase_ml_vision.dart'
import 'package:google_ml_kit/google_ml_kit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //Add this
  await FaceCamera.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Example',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SideBar(),
        '/user': (context) => UserScreen(),
        '/admin': (context) => AdminScreen(),
        '/login': (context) => LoginPage(),
        '/register':(context) => RegisterPage(),
        '/image_uploed':(context) => ImageUploadPage(),
        '/facescanner':(context) => FaceScannerPage(),

      },
    );
  }
}
//
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Home'))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/admin');
              },
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Admin',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/user');
              },
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'User',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShapFace'),
      ),
      drawer: Drawer(
        width: 200,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'shapFace',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
               Navigator.pushNamed(context, '/user');
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('image_upload'),
              onTap: () {
               Navigator.pushNamed(context, '/image_uploed');
              },
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text('face_detection '),
              onTap: () {
                Navigator.pushNamed(context, '/facescanner');
              },
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text('login'),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
      body:  Center(
        child: Container(
          color: Colors.red,
          child: Text('Main Contain'),
        ),
      ),
    );
  }
}




class AdminScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Admin'))),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Go Back',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ),
      ),
    );
  }
}

class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('User'))),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Go Back',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ),
      ),
    );
  }
}
