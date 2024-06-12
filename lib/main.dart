import 'package:firebase_core/firebase_core.dart';
import 'package:first_test/firebase_options.dart';
import 'package:first_test/pages/HomeView.dart';
import 'package:first_test/services/message-provider.dart';
import 'package:first_test/services/user-provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: UserProvider()),
        ChangeNotifierProvider.value(value: MessageProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          colorScheme: ColorScheme.dark(primary: Colors.red.shade900),
        ),
        home: const HomeView(),
      ),
    );
  }
}
