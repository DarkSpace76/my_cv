import 'package:flutter/material.dart';
import 'package:my_resume/app/main.dart';
import 'package:my_resume/data/datasource/user.dart';
import 'package:my_resume/domain/models/user.dart';
import 'package:my_resume/presentation/pages/main/cv.dart';

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

  User user = User.userFormJson(userInfo);
  runApp(const App());
}
