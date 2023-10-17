import 'package:flutter/material.dart';

List<Widget> list = [
  const Cartoon(
      title: 'Dexter',
      description: 'Dexter\'s Laboratory',
      img: 'images/dexter.png',
      color: Colors.yellow),
  const Cartoon(
      title: 'Blosson',
      description: 'Powerpuff Girls',
      img: 'images/blosson.png',
      color: Colors.orange),
  const Cartoon(
      title: 'Gumball',
      description: 'Amazing world of Gumball',
      img: 'images/gumball.png',
      color: Colors.blue),
  const Cartoon(
      title: 'Dexter',
      description: 'Dexter\'s Laboratory',
      img: 'images/dexter.png',
      color: Colors.yellow),
  const Cartoon(
      title: 'Blosson',
      description: 'Powerpuff Girls',
      img: 'images/blosson.png',
      color: Colors.orange),
  const Cartoon(
      title: 'Gumball',
      description: 'Amazing world of Gumball',
      img: 'images/gumball.png',
      color: Colors.blue),
];

class CartoonGrid extends StatelessWidget {
  const CartoonGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: list.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) => list[index],
      ),
    );
  }
}

class Cartoon extends StatelessWidget {
  const Cartoon(
      {super.key,
      required this.title,
      required this.description,
      required this.img,
      required this.color});
  final String title;
  final String description;
  final String img;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 10,
            child: Image.asset(
              img,
              width: 150,
              height: 150,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
