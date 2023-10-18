import 'dart:io';

import 'package:designs/login/auth.dart';
import 'package:designs/login/blue.dart';
import 'package:designs/login/delopment.dart';
import 'package:designs/login/pink&dark_blue.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

import 'package:flutter/services.dart' show ByteData, rootBundle;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static String route = '/Login designs';
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  List<Widget> list = [
    const DevelopmentPage(),
    const PinkAndDarkBlue(),
    AuthPage(),
    const BluePage(),
  ];

  Future<void> loadFileFromAssets(int index) async {
    ByteData fileData = await rootBundle.load('assets/login_$index.pdf');

    String directory = '/storage/emulated/0/Download';
    Directory(directory).create();

    String filePath = '$directory/login_$index.pdf';

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
