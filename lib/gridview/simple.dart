import 'package:flutter/material.dart';

List<Widget> list = [
  const Simple(title: 'General', color: Colors.lightBlue, icon: Icons.list),
  const Simple(
      title: 'Transport',
      color: Color.fromARGB(255, 219, 18, 254),
      icon: Icons.emoji_transportation),
  const Simple(title: 'Shopping', color: Colors.pink, icon: Icons.shopify),
  const Simple(title: 'Bills', color: Colors.orangeAccent, icon: Icons.receipt),
  const Simple(
      title: 'Entertainment',
      color: Colors.indigoAccent,
      icon: Icons.diversity_3),
  const Simple(title: 'Grocery', color: Colors.greenAccent, icon: Icons.apple),
];

class SimpleGrid extends StatelessWidget {
  const SimpleGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: list.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) => list[index],
      ),
    );
  }
}

class Simple extends StatelessWidget {
  const Simple(
      {super.key,
      required this.title,
      required this.color,
      required this.icon});
  final String title;
  final Color color;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 300,
        width: 250,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 59, 62, 102),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: color,
              child: Icon(
                icon,
                color: Colors.white,
                size: 40,
              ),
            ),
            Text(
              title,
              style: TextStyle(color: color, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
