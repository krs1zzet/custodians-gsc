import 'package:custodians/product/init/theme/light_theme.dart';
import irebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'features/auth/views/auth_checker.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightTheme().theme,
      home: const AuthChecker(),
    );
  }
}
