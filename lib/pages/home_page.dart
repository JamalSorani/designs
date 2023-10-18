import 'package:designs/pages/items_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return await showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text(
                'Do you want to leave?',
                textAlign: TextAlign.center,
              ),
              actionsAlignment: MainAxisAlignment.center,
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: const Text(
                    'No',
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: const Text(
                    'Yes',
                  ),
                ),
              ],
            );
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[200],
          title: const Text('Design App'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Want to have an app mobile with a wonderful design?',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
              Image.asset('images/designer.png'),
              const Text(
                'we have some professional designs for you to choose from',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              IconButton.filled(
                style: IconButton.styleFrom(
                  backgroundColor: Colors.pink[300],
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(ItemsPage.route);
                },
                icon: const Icon(
                  Icons.navigate_next,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
