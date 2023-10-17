import 'package:flutter/material.dart';

List<Widget> list = [
  Item('AirPods', 'images/card.png'),
  Item('AirPods', 'images/card.png'),
  Item('AirPods', 'images/card.png'),
  Item('AirPods', 'images/card.png'),
  Item('AirPods', 'images/card.png'),
  Item('AirPods', 'images/card.png'),
  Item('AirPods', 'images/card.png'),
  Item('AirPods', 'images/card.png'),
  Item('AirPods', 'images/card.png'),
  Item('AirPods', 'images/card.png'),
  Item('AirPods', 'images/card.png'),
  Item('AirPods', 'images/card.png'),
  Item('AirPods', 'images/card.png'),
  Item('AirPods', 'images/card.png'),
  Item('AirPods', 'images/card.png'),
];

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) => list[index],
        itemCount: list.length,
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}

class Item extends StatelessWidget {
  final String title;
  final String img;
  Item(this.title, this.img);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.purple[50],
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 50,
      width: width - 80,
      child: ListTile(
        title: Text(title),
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: Image.asset(img),
        ),
        trailing: SizedBox(
          width: 100,
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {},
                color: const Color.fromARGB(255, 25, 118, 210),
              ),
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {},
                color: const Color.fromARGB(255, 211, 47, 47),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
