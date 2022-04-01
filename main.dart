import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String assetName = 'assets/secret.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter SVG"),
      ),
      /// load svg from network
      body: Center(
        child: SvgPicture.network(
          "https://raw.githubusercontent.com/dnfield/flutter_svg/master/example/assets/w3samples/alphachannel.svg",
          width: MediaQuery.of(context).size.width,
        ),
      ),
      /// load svg from asset
      // body: SvgPicture.asset(
      //   assetName,
      //   //color: Colors.blue,
      //   semanticsLabel: 'SECRET',
      // ),
    );
  }
}

