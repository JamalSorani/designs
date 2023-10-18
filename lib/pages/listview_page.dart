import 'dart:io';

import 'package:designs/listview/card.dart';
import 'package:designs/listview/cumali.dart';
import 'package:designs/listview/health.dart';

import 'package:designs/listview/item.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/services.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});
  static String route = '/ListView designs';
  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<Widget> list = [
    const CardList(),
    const CumaliList(),
    const HealthList(),
    const ItemList(),
  ];

  Future<void> loadFileFromAssets(int index) async {
    ByteData fileData = await rootBundle.load('assets/listview_$index.pdf');

    String directory = '/storage/emulated/0/Download';
    Directory(directory).create();

    String filePath = '$directory/listview_$index.pdf';

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
                  // ignore: use_build_context_synchronously
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
