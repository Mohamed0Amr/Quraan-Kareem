import 'package:flutter/material.dart';
import 'package:quraankareem/features/home/ui/widgests/quran_list.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('القرآن الكريم'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
         body: const QuranList(), // ✅ Call the widget here
    );
  }
}
