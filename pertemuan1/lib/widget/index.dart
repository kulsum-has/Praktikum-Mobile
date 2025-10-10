import 'package:flutter/material.dart'; //berguna supaya koding dapat digunakan

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("QUIZZ")),
        body: Center(
          child: Column(
            children: [Text("Hasni Umu Kulsum"), Text("M. Samsul Aripin")],
          ),

          // body: Center(child: Text ("Nama Saya Kulsum"),
        ),
      ),
    );
  }
}