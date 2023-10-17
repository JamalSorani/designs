import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';

import '../hexcolor.dart';

List<Widget> list = [
  const Item(
    color1: '#A9F1DF',
    color2: '#FFBBBB',
  ),
  const Item(
    color1: '#D8B5FF',
    color2: '#1EAE98',
  ),
  const Item(
    color1: '#BFF098',
    color2: '#6FD6FF',
  ),
  const Item(
    color1: '#C6EA8D',
    color2: '#FE90AF',
  ),
  const Item(
    color1: '#F1EAB9',
    color2: '#FF8C8C',
  ),
  const Item(
    color1: '#EA8D8D',
    color2: '#A890FE',
  ),
  const Item(
    color1: '#00B7FF',
    color2: '#FFFFC7',
  ),
  const Item(
    color1: '#FCA5F1',
    color2: '#B5FFFF',
  ),
  const Item(
    color1: '#D74177',
    color2: '#FFE98A',
  ),
  const Item(
    color1: '#38ADAE',
    color2: '#CD295A',
  ),
  //
  const Item(
    color1: '#FF2CDF',
    color2: '#0014FF',
  ),
  const Item(
    color1: '#00FF5B',
    color2: '#0014FF',
  ),
  const Item(
    color1: '#FFE53B',
    color2: '#FF2525',
  ),
  const Item(
    color1: '#FFE53B',
    color2: '#00FFFF',
  ),
  const Item(
    color1: '#00E1FD',
    color2: '#FC007A',
  ),
  const Item(
    color1: '#00E5FF',
    color2: '#1200FF',
  ),
  const Item(
    color1: '#FFE53B',
    color2: '#FF005B',
  ),
  const Item(
    color1: '#FF0A6C',
    color2: '#2D27FF',
  ),
];

class GradientPage extends StatelessWidget {
  const GradientPage({super.key});
  static String route = '/Gradient colors';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView.separated(
          itemBuilder: (context, index) => list[index],
          itemCount: list.length,
          separatorBuilder: (context, index) => const Divider(),
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({super.key, required this.color1, required this.color2});
  final String color1;
  final String color2;

  final snackBar = const SnackBar(
    content: Text('copied'),
    duration: Duration(seconds: 2),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            Color(hexColor(color1)),
            Color(
              hexColor(color2),
            ),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
              onPressed: () async {
                await FlutterClipboard.copy(color1);
                if (context.mounted) return;
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              icon: const Icon(
                Icons.copy,
                color: Colors.black54,
              ),
              label: Text(
                color1,
                style: const TextStyle(
                  color: Colors.black54,
                ),
              ),
            ),
            TextButton.icon(
              onPressed: () async {
                await FlutterClipboard.copy(color2);
                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              icon: const Icon(
                Icons.copy,
                color: Colors.black54,
              ),
              label: Text(
                color2,
                style: const TextStyle(
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
