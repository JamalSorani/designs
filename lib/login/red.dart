import 'package:flutter/material.dart';

class RedPage extends StatefulWidget {
  const RedPage({super.key});

  @override
  State<RedPage> createState() => _RedPageState();
}

class _RedPageState extends State<RedPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Image.asset(
            'images/red_page.jpg',
            width: width,
            height: height,
            fit: BoxFit.fill,
          ),
          Container(
            width: width,
            height: height,
            color: const Color.fromARGB(111, 255, 0, 0),
          ),
          Container(
            height: 160,
            width: width * 0.8,
            decoration: const BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(80),
                bottomRight: Radius.circular(80),
              ),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  title: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none,
                      hintText: 'Username',
                    ),
                  ),
                ),
                const Center(
                  child: Divider(
                    color: Color.fromARGB(111, 255, 0, 0),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.lock, color: Colors.white),
                  title: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none,
                      hintText: '***********',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: height / 2.32,
            left: width * 0.786,
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.arrow_circle_right,
                size: 80,
                color: Colors.white54,
              ),
            ),
          ),
          Positioned(
            bottom: height / 3.1,
            right: width * 0.02,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            bottom: height / 4.5,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                height: 70,
                width: 150,
                child: const Center(
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
