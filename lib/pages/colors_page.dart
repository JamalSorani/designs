import 'package:card_swiper/card_swiper.dart';
import 'package:clipboard/clipboard.dart';
import 'package:designs/hexcolor.dart';
import 'package:flutter/material.dart';

List<Widget> list = [
  const ListItem(
    list: [
      Item(color: '#EE4540'),
      Item(color: '#C72C41'),
      Item(color: '#801336'),
      Item(color: '#510A32'),
      Item(color: '#2D142C'),
    ],
    color: '#2D142C',
  ),
  const ListItem(
    list: [
      Item(color: '#6A888C'),
      Item(color: '#5F7174'),
      Item(color: '#A5E65A'),
      Item(color: '#00A6C0'),
      Item(color: '#32D9CB'),
    ],
    color: '#32D9CB',
  ),
  const ListItem(
    list: [
      Item(color: '#06142E'),
      Item(color: '#1B3358'),
      Item(color: '#473E66'),
      Item(color: '#BD83B8'),
      Item(color: '#F5D7DB'),
      Item(color: '#F1916D'),
    ],
    color: '#F1916D',
  ),
  const ListItem(
    list: [
      Item(color: '#34495E'),
      Item(color: '#9B59B6'),
      Item(color: '#3498DB'),
      Item(color: '#2ECC71'),
      Item(color: '#1ABC9C'),
    ],
    color: '#1ABC9C',
  ),
  const ListItem(
    list: [
      Item(color: '#DB2044'),
      Item(color: '#6B2CF5'),
      Item(color: '#FF4BA7'),
      Item(color: '#6F085A'),
      Item(color: '#3FFF7C'),
      Item(color: '#2F80FF'),
      Item(color: '#A1FFD9'),
      Item(color: '#FE3D6C'),
    ],
    color: '#FE3D6C',
  ),
  const ListItem(
    list: [
      Item(color: '#5F6F52'),
      Item(color: '#A9B388'),
      Item(color: '#FEFAE0'),
      Item(color: '#F9EBC7'),
      Item(color: '#B99470'),
      Item(color: '#C4661F'),
      Item(color: '#783D19'),
    ],
    color: '#783D19',
  ),
  const ListItem(
    list: [
      Item(color: '#0E1424'),
      Item(color: '#374254'),
      Item(color: '#8A8FA3'),
      Item(color: '#ADBBC6'),
      Item(color: '#ECECEC'),
    ],
    color: '#ECECEC',
  ),
];

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  static String route = '/Coordinated colors';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onDoubleTap: () {},
            child: list[index],
          );
        },
        itemCount: list.length,
        pagination: SwiperPagination(
          alignment: Alignment.bottomCenter,
          builder: DotSwiperPaginationBuilder(
            color: Colors.white,
            activeColor: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.list, required this.color});
  final List<Widget> list;
  final String color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(hexColor(color)),
      body: ListView.builder(
        itemBuilder: (context, index) => list[index],
        itemCount: list.length,
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({super.key, required this.color});
  final String color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      color: Color(
        hexColor(color),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              color,
              style: const TextStyle(color: Colors.white),
            ),
            IconButton(
              onPressed: () async {
                await FlutterClipboard.copy(color);
                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('copied'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              icon: const Icon(
                Icons.copy,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
