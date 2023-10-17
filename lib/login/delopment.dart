import 'package:flutter/material.dart';

class DevelopmentPage extends StatefulWidget {
  const DevelopmentPage({super.key});
  @override
  State<DevelopmentPage> createState() => _DevelopmentPageState();
}

class _DevelopmentPageState extends State<DevelopmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 230, 235, 241),
        child: Center(
          child: Container(
            height: 385,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(245, 220, 225, 230),
                  Color.fromARGB(250, 225, 230, 236),
                  Color.fromARGB(255, 230, 235, 241),
                  Color.fromARGB(255, 235, 240, 245),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 10,
                  offset: const Offset(10, 10),
                ),
                const BoxShadow(
                  color: Colors.white,
                  blurRadius: 10,
                  offset: Offset(-10, -10),
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 5),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {},
                      icon: ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Image.asset(
                          'images/development.jpg',
                          height: 250,
                          width: 250,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Flutter Development',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  'Made easy!',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black.withOpacity(0.5),
                    ),
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  width: 190,
                  height: 40,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Icon(
                          Icons.person_outline,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Username',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black.withOpacity(0.5),
                    ),
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  width: 190,
                  height: 40,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Icon(
                          Icons.lock_outline,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 2.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: '**********',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 79, 181, 209),
                        minimumSize: const Size(195, 45)),
                    onPressed: () {},
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(right: 2),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Forgot password?',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                      ),
                      onPressed: () {},
                      child: Text(
                        'or Sign Up',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
