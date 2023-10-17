import 'package:flutter/material.dart';

List<Widget> list = [
  const Milk(
    title: 'Milk',
    description: 'irresistible taste',
    price: '30\$',
    img: 'images/milk.png',
  ),
  const Milk(
    title: 'Milk',
    description: 'irresistible taste',
    price: '30\$',
    img: 'images/milk.png',
  ),
  const Milk(
    title: 'Milk',
    description: 'lovely taste',
    price: '30\$',
    img: 'images/milk.png',
  ),
  const Milk(
    title: 'Milk',
    description: 'lovely taste',
    price: '30\$',
    img: 'images/milk.png',
  ),
  const Milk(
    title: 'Milk',
    description: 'irresistible taste',
    price: '30\$',
    img: 'images/milk.png',
  ),
  const Milk(
    title: 'Milk',
    description: 'irresistible taste',
    price: '30\$',
    img: 'images/milk.png',
  ),
  const Milk(
    title: 'Milk',
    description: 'lovely taste',
    price: '30\$',
    img: 'images/milk.png',
  ),
  const Milk(
    title: 'Milk',
    description: 'lovely taste',
    price: '30\$',
    img: 'images/milk.png',
  ),
];

class MilkGrid extends StatelessWidget {
  const MilkGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: list.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) => list[index],
      ),
    );
  }
}

class Milk extends StatelessWidget {
  const Milk({
    super.key,
    required this.title,
    required this.description,
    required this.price,
    required this.img,
  });
  final String title;
  final String description;
  final String price;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.only(bottom: 8),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            bottom: 110,
            left: 48,
            child: Image.asset(
              img,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            bottom: 92,
            left: 66,
            child: Container(
              height: 15,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 0),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 27,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  description.length <= 17
                      ? description
                      : '${description.substring(0, 15)}...',
                  style: TextStyle(color: Colors.black.withOpacity(0.5)),
                ),
                Text(
                  price,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 2,
            right: 22,
            child: IconButton.filled(
              // color: color,
              onPressed: () {},
              icon: const Icon(
                Icons.add,
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 22,
            child: IconButton.filled(
              // color: color,
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
