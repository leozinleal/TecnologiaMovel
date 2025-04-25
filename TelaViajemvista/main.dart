import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Flutter layout demo"))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageDemo(),
            Descricao(),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: [Icon(Icons.call), Text("CALL")]),
                      Column(children: [Icon(Icons.gps_fixed), Text("ROUTE")]),
                      Column(children: [Icon(Icons.share), Text("SHARE")]),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text("is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy ard dummy is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's st ard dummy is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's st ard dummy is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's st ard dummy is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's st"),
            )
          ],
        ),
      ),
    );
  }
}

class ImageDemo extends StatelessWidget {
  const ImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/naturalvista.avif",
      fit: BoxFit.cover,
      height: 220,
      width: MediaQuery.of(context).size.width, //pega largura do telefone
    );
  }
}

class Descricao extends StatelessWidget {
  const Descricao({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "Deschinen Lake CampGround",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  "Kandersteg, SwitzerLand",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red),
          Text("42"),
        ],
      ),
    );
  }
}
