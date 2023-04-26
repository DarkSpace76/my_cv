import 'package:flutter/material.dart';
import 'package:my_resume/cv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
/*   await Firebase.initializeApp(
      // options: DefaultFirebaseOptions.currentPlatform
      ); */

  /*  if (kDebugMode) {
    try {
      FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
      await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  } */
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const CvPage());
  }
}
