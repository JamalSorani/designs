import 'package:flutter/material.dart';

class PinkAndDarkBlue extends StatefulWidget {
  const PinkAndDarkBlue({super.key});

  @override
  State<PinkAndDarkBlue> createState() => _PinkAndDarkBlueState();
}

class _PinkAndDarkBlueState extends State<PinkAndDarkBlue> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 0, 13, 23),
          bottom: const TabBar(
            indicatorColor: Colors.pinkAccent,
            indicatorWeight: 1,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                child: Text(
                  'SIGN IN',
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'SIGN UP',
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Image.asset(
              'images/pink_dark_blue.jpg',
              width: width,
              height: height,
              fit: BoxFit.fill,
            ),
            const TabBarView(
              children: [
                SignInPage(),
                SignUpPage(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70),
        child: Column(
          children: [
            const SizedBox(height: 30),
            TextFormField(
              style: const TextStyle(color: Colors.pinkAccent),
              decoration: const InputDecoration(
                hintStyle: TextStyle(color: Colors.pinkAccent),
                border: InputBorder.none,
                hintText: 'Username',
              ),
            ),
            const Divider(color: Colors.pinkAccent),
            const SizedBox(height: 10),
            TextFormField(
              style: const TextStyle(color: Colors.pinkAccent),
              decoration: const InputDecoration(
                hintStyle: TextStyle(color: Colors.pinkAccent),
                border: InputBorder.none,
                hintText: 'PASSWORD',
              ),
            ),
            const Divider(color: Colors.pinkAccent),
            const SizedBox(height: 50),
            TextButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.login,
                    color: Colors.pinkAccent,
                  ),
                  title: Text(
                    'KEEP ME SIGN IN',
                    style: TextStyle(color: Colors.pinkAccent),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                minimumSize: const Size(200, 50),
              ),
              onPressed: () {},
              child: const Text(
                'SIGN IN',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 5),
            TextButton(
              onPressed: () {},
              child: const Text(
                'FORGOT PASSWORD?',
                style: TextStyle(color: Colors.pinkAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Column(
          children: [
            const SizedBox(height: 30),
            TextFormField(
              style: const TextStyle(color: Colors.pinkAccent),
              decoration: const InputDecoration(
                hintStyle: TextStyle(color: Colors.pinkAccent),
                border: InputBorder.none,
                hintText: 'Username',
              ),
            ),
            const Divider(color: Colors.pinkAccent),
            const SizedBox(height: 10),
            TextFormField(
              style: const TextStyle(color: Colors.pinkAccent),
              decoration: const InputDecoration(
                hintStyle: TextStyle(color: Colors.pinkAccent),
                border: InputBorder.none,
                hintText: 'MOBILE NUMBER',
              ),
            ),
            const Divider(color: Colors.pinkAccent),
            const SizedBox(height: 10),
            TextFormField(
              style: const TextStyle(color: Colors.pinkAccent),
              decoration: const InputDecoration(
                hintStyle: TextStyle(color: Colors.pinkAccent),
                border: InputBorder.none,
                hintText: 'PASSWORD',
              ),
            ),
            const Divider(color: Colors.pinkAccent),
            const SizedBox(height: 10),
            TextFormField(
              style: const TextStyle(color: Colors.pinkAccent),
              decoration: const InputDecoration(
                hintStyle: TextStyle(color: Colors.pinkAccent),
                border: InputBorder.none,
                hintText: 'CONFIRM PASSWORD',
              ),
            ),
            const Divider(color: Colors.pinkAccent),
            const SizedBox(height: 60),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                minimumSize: const Size(200, 50),
              ),
              onPressed: () {},
              child: const Text(
                'SIGN UP',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 0,
            )
          ],
        ),
      ),
    );
  }
}
