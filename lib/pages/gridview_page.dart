import 'dart:io';
import 'package:designs/gridview/cartoon.dart';
import 'package:designs/gridview/milk.dart';
import 'package:designs/gridview/procut.dart';
import 'package:designs/gridview/simple.dart';

import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/services.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});
  static String route = '/GridView designs';
  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  List<Widget> list = [
    const MilkGrid(),
    const SimpleGrid(),
    const ProductGrid(),
    const CartoonGrid(),
  ];

  Future<void> loadFileFromAssets(int index) async {
    ByteData fileData = await rootBundle.load('assets/gridview_$index.pdf');

    String directory = '/storage/emulated/0/Download';
    Directory(directory).create();
    String filePath = '$directory/gridview_$index.pdf';

    File file = File(filePath);

    await file.writeAsBytes(fileData.buffer.asUint8List());
  }

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Stack(
          children: [
            list[index],
            Positioned(
              bottom: 40,
              right: 40,
              child: FloatingActionButton(
                onPressed: () async {
                  await loadFileFromAssets(index);
                  if (context.mounted) return;
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('downloading...'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                child: const Icon(Icons.download),
              ),
            ),
          ],
        );
      },
      itemCount: list.length,
      pagination: SwiperPagination(
        alignment: Alignment.bottomCenter,
        builder: DotSwiperPaginationBuilder(
          color: Colors.black.withOpacity(0.2),
          activeColor: Theme.of(context).colorScheme.primary,
        ),
      ),
      control: const SwiperControl(),
    );
  }
}
