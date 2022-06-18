import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final foto = const CircleAvatar(
    backgroundImage: NetworkImage(
        'https://user-images.githubusercontent.com/59448111/171964704-3334b58a-37c4-475f-a3dd-5a18ac55505a.png'),
    radius: 150,
  );

  final nome = const Text(
    'Jaqueline Lima',
    style: TextStyle(fontSize: 30),
    textAlign: TextAlign.center,
  );

  final botaoTelefone = IconButton(
      color: Color.fromARGB(255, 238, 36, 103),
      icon: const Icon(Icons.phone),
      onPressed: () {
        launchUrl(Uri(scheme: 'tel', path: '9999-99999'));
      });

  final botaoEmail = IconButton(
      color: Color.fromARGB(255, 238, 36, 103),
      icon: const Icon(Icons.email),
      onPressed: () {
        launchUrl(Uri(scheme: 'jaque', path: 'exemplo@email.com'));
      });

  final botaoTSMS = IconButton(
      color: Color.fromARGB(255, 238, 36, 103),
      icon: const Icon(Icons.sms),
      onPressed: () {
        launchUrl(Uri(scheme: 'sms', path: '9999-9999'));
      });

  Widget build(BuildContext contexto) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          foto,
          nome,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [botaoTelefone, botaoEmail, botaoTSMS],
          ),
        ],
      ),
    );
  }
}
