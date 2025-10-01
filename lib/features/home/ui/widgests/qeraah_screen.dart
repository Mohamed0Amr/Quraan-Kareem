import 'package:flutter/material.dart';
import 'package:quraankareem/core/theming/styles.dart';

class QeraahScreen extends StatelessWidget {
  const QeraahScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "📖 شاشة القراءة (المصحف)",
        style: TextStyles.font24BlackBold,
      ),
    );
  }
}
