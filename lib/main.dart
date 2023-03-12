import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaQuery(
      data: MediaQueryData(),
      child: MaterialApp(
        home: Galleries(),
      ),
    );
  }
}

class Galleries extends StatefulWidget {
  const Galleries({super.key});

  @override
  State<Galleries> createState() => GalleriesState();
}

class GalleriesState extends State<Galleries> {
  bool isBig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Gallery'),
          titleTextStyle:
              const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          backgroundColor: Colors.amber,
        ),
        body: Center(
            child: GestureDetector(
          onTap: () {
            setState(() {
              isBig = !isBig;
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                width: isBig ? 300 : 200,
                height: isBig ? 300 : 200,
                duration: const Duration(milliseconds: 200),
                curve: Curves.fastOutSlowIn,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/1.jpg'),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
        )));
  }
}
