import 'package:flutter/material.dart';

List<Widget> list = [
  const Card(
      title: 'AirPods',
      price: '99.99',
      img: 'images/card.png',
      color: Colors.deepOrange),
  const Card(
      title: 'AirPods',
      price: '99.99',
      img: 'images/card.png',
      color: Colors.deepOrange),
  const Card(
      title: 'AirPods',
      price: '99.99',
      img: 'images/card.png',
      color: Colors.deepOrange),
  const Card(
      title: 'AirPods',
      price: '99.99',
      img: 'images/card.png',
      color: Colors.deepOrange),
  const Card(
      title: 'AirPods',
      price: '99.99',
      img: 'images/card.png',
      color: Colors.deepOrange),
  const Card(
      title: 'AirPods',
      price: '99.99',
      img: 'images/card.png',
      color: Colors.deepOrange),
];

class CardList extends StatelessWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) => list[index],
        itemCount: list.length,
        separatorBuilder: (context, index) => const Divider(
          color: Colors.black54,
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card(
      {super.key,
      required this.title,
      required this.price,
      required this.img,
      required this.color});
  final String title;
  final String price;
  final String img;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      height: 190.0,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 166.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 30),
              height: 200.0,
              width: 200.0,
              child: Column(
                children: [
                  Image.asset(
                    img,
                    fit: BoxFit.fill,
                    height: 140,
                    width: 200,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.favorite,
                        ),
                        color: color,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.shopping_cart,
                        ),
                        onPressed: () {},
                        color: color,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: SizedBox(
              height: 136.0,
              width: MediaQuery.of(context).size.width - 200,
              child: Center(
                child: Column(
                  children: [
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 5 / 5,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFfcca46),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Text('\$ $price'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
