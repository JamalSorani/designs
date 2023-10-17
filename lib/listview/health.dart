import 'package:flutter/material.dart';

List<Widget> list = [
  const Health(
    title: 'FAST FAT BURNING',
    description: 'Reduse body fat percentage with a well-tested solution.',
    img: 'images/health.png',
    color1: Color.fromARGB(255, 245, 222, 20),
    color2: Color.fromARGB(255, 254, 242, 131),
  ),
  const Health(
    title: 'FAST FAT BURNING',
    description: 'Reduse body fat percentage with a well-tested solution.',
    img: 'images/health.png',
    color1: Colors.deepPurpleAccent,
    color2: Color.fromARGB(255, 146, 107, 255),
  ),
  const Health(
    title: 'FAST FAT BURNING',
    description: 'Reduse body fat percentage with a well-tested solution.',
    img: 'images/health.png',
    color1: Colors.blueAccent,
    color2: Color.fromARGB(255, 0, 174, 255),
  ),
  const Health(
    title: 'FAST FAT BURNING',
    description: 'Reduse body fat percentage with a well-tested solution.',
    img: 'images/health.png',
    color1: Colors.pink,
    color2: Color.fromARGB(255, 255, 105, 155),
  ),
  const Health(
    title: 'FAST FAT BURNING',
    description: 'Reduse body fat percentage with a well-tested solution.',
    img: 'images/health.png',
    color1: Colors.orange,
    color2: Color.fromARGB(255, 255, 189, 91),
  ),
];

class HealthList extends StatelessWidget {
  const HealthList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) => list[index],
        itemCount: list.length,
      ),
    );
  }
}

class Health extends StatelessWidget {
  const Health(
      {super.key,
      required this.title,
      required this.img,
      required this.color1,
      required this.color2,
      required this.description});
  final String title;
  final String description;
  final String img;
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: color1,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      padding: const EdgeInsets.only(left: 20),
      height: 200,
      width: width - 80,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            child: Image.asset(
              img,
              color: color2,
              height: 200,
              width: 200,
            ),
          ),
          Positioned(
            top: 0,
            right: 115,
            child: CircleAvatar(
              backgroundColor: color2,
              radius: 40,
            ),
          ),
          Positioned(
            bottom: -40,
            left: 75,
            child: CircleAvatar(
              backgroundColor: color2,
              radius: 40,
            ),
          ),
          Positioned(
            bottom: -45,
            right: 50,
            child: Icon(
              Icons.headphones,
              color: color2,
              size: 100,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  title,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: width * 0.5,
                child: Text(
                  description,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 19,
                  ),
                  maxLines: 3,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
