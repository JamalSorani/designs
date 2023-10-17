import 'package:flutter/material.dart';

class BluePage extends StatefulWidget {
  const BluePage({super.key});

  @override
  State<BluePage> createState() => _BluePageState();
}

class _BluePageState extends State<BluePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo, Color.fromARGB(255, 25, 118, 210)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Container(
            height: 325,
            width: 250,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: const Color.fromARGB(255, 73, 197, 255),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              gradient: const LinearGradient(
                colors: [
                  Colors.indigo,
                  Color.fromARGB(255, 25, 118, 210),
                  Color.fromARGB(255, 33, 150, 243),
                  Colors.lightBlue,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: Colors.lightBlueAccent,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                      size: 50,
                    ),
                    color: Colors.lightBlueAccent,
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.indigo, Colors.indigoAccent])),
                  width: 190,
                  height: 40,
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                          child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          hintText: 'Username',
                          labelStyle: TextStyle(color: Colors.white),
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 30),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.indigo, Colors.indigoAccent])),
                  width: 190,
                  height: 40,
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            hintText: '**********',
                            labelStyle: TextStyle(color: Colors.white),
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(
                          colors: [Colors.indigo, Colors.indigoAccent])),
                  width: 120,
                  height: 40,
                  child: Center(
                    child: InkWell(
                      onTap: () {},
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
