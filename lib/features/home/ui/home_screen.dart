import 'package:flutter/material.dart';
import 'package:quraankareem/core/theming/styles.dart';
import 'package:quraankareem/features/home/ui/widgests/quran_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('القرآن الكريم', style: TextStyles.font18BlackMedium),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: const QuranList(),
    );
  }
}
