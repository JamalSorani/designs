import 'package:flutter/material.dart';

List<Widget> list = [
  const Cumali(
      img: 'images/cumali.png',
      color1: Color.fromARGB(255, 33, 150, 243),
      color2: Color.fromARGB(255, 70, 172, 255),
      rank: '1',
      name: 'Cumali',
      title: 'Cukurun delelisi',
      popularity: '2342',
      like: '4736',
      followed: '136'),
  const Cumali(
      img: 'images/cumali.png',
      color1: Color.fromARGB(255, 255, 153, 0),
      color2: Color.fromARGB(255, 255, 178, 61),
      rank: '1',
      name: 'Cumali',
      title: 'Cukurun delelisi',
      popularity: '2342',
      like: '4736',
      followed: '136'),
  const Cumali(
      img: 'images/cumali.png',
      color1: Colors.pink,
      color2: Color.fromARGB(255, 255, 68, 130),
      rank: '1',
      name: 'Cumali',
      title: 'Cukurun delelisi',
      popularity: '2342',
      like: '4736',
      followed: '136'),
  const Cumali(
      img: 'images/cumali.png',
      color1: Colors.purple,
      color2: Color.fromARGB(255, 173, 3, 203),
      rank: '1',
      name: 'Cumali',
      title: 'Cukurun delelisi',
      popularity: '2342',
      like: '4736',
      followed: '136'),
  const Cumali(
      img: 'images/cumali.png',
      color1: Colors.cyan,
      color2: Color.fromARGB(255, 5, 202, 228),
      rank: '1',
      name: 'Cumali',
      title: 'Cukurun delelisi',
      popularity: '2342',
      like: '4736',
      followed: '136'),
];

class CumaliList extends StatelessWidget {
  const CumaliList({super.key});

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

class Cumali extends StatelessWidget {
  const Cumali(
      {super.key,
      required this.img,
      required this.color1,
      required this.color2,
      required this.rank,
      required this.name,
      required this.title,
      required this.popularity,
      required this.like,
      required this.followed});

  final String name;
  final String title;

  final String popularity;
  final String like;

  final String followed;

  final String img;
  final String rank;
  final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color1,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      height: 175,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            child: Container(
              height: 175,
              width: 100,
              decoration: BoxDecoration(
                color: color2,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(250),
                  topRight: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
            ),
          ),
          Positioned(
            right: 18,
            top: 55,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    rank,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  const Text(
                    'Ranking',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: color2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.asset(
                      img,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Title: $title',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: 30,
            bottom: 20,
            child: SizedBox(
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        popularity,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'Popularity',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        like,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'Like',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        followed,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'Followed',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
