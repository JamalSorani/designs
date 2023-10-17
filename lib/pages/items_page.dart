import 'package:flutter/material.dart';
import '../hexcolor.dart';

class ItemsPage extends StatefulWidget {
  const ItemsPage({super.key});
  static String route = '/items page';
  @override
  State<ItemsPage> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  List<Widget> list = [
    const Item(
        title: 'Login designs',
        icon: Icons.login,
        color1: '#A9F1DF',
        color2: '#FFBBBB'),
    const Item(
        title: 'GridView designs',
        icon: Icons.grid_on,
        color1: '#D8B5FF',
        color2: '#1EAE98'),
    const Item(
        title: 'ListView designs',
        icon: Icons.list_alt,
        color1: '#BFF098',
        color2: '#6FD6FF'),
    const Item(
        title: 'Gradient colors',
        icon: Icons.format_color_fill,
        color1: '#C6EA8D',
        color2: '#FE90AF'),
    const Item(
        title: 'Coordinated colors',
        icon: Icons.color_lens,
        color1: '#F1EAB9',
        color2: '#FF8C8C'),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'images/choose2.png',
              height: 250,
              width: 250,
            ),
            Container(
              height: height - 275,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 214, 229, 255),
                    Color.fromARGB(255, 214, 229, 255),
                    Color.fromARGB(255, 248, 187, 208),
                    Color.fromARGB(255, 248, 187, 208),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  const Text(
                    'Choose what you need',
                    style: TextStyle(fontSize: 30),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemBuilder: (context, index) => list[index],
                        itemCount: list.length),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Item extends StatefulWidget {
  const Item(
      {super.key,
      required this.title,
      required this.icon,
      required this.color1,
      required this.color2});
  final String title;
  final IconData icon;
  final String color1;
  final String color2;

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/${widget.title}');
      },
      child: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [
              Color(hexColor(widget.color1)),
              Color(
                hexColor(widget.color2),
              ),
            ],
          ),
        ),
        child: Row(
          children: [
            Icon(
              widget.icon,
              size: 25,
            ),
            const SizedBox(width: 10),
            Text(
              widget.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}
