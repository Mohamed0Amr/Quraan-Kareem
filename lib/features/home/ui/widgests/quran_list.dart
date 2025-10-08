import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quraankareem/core/helpers/spacing.dart';
import 'tilawat_screen.dart';
import 'qeraah_screen.dart';

class QuranList extends StatefulWidget {
  const QuranList({Key? key}) : super(key: key);

  @override
  State<QuranList> createState() => _QuranListState();
}

class _QuranListState extends State<QuranList> {
  int selectedTab = 1; // 0 = التلاوات, 1 = قراءة

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // RTL for Arabic
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            verticalSpace(10.h),
            // Tabs
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.h),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => selectedTab = 1),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12.w),
                        decoration: BoxDecoration(
                          color: selectedTab == 1
                              ? Colors.green
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.menu_book_rounded,
                                size: 20.w,
                                color: selectedTab == 1
                                    ? Colors.white
                                    : Colors.black,
                              ),
                              horizontalSpace(5.w),
                              Text(
                                "قراءة",
                                style: TextStyle(
                                  color: selectedTab == 1
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                            Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => selectedTab = 0),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12.w),
                        decoration: BoxDecoration(
                          color: selectedTab == 0
                              ? Colors.green
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.headphones,
                                size: 20.w,
                                color: selectedTab == 0
                                    ? Colors.white
                                    : Colors.black,
                              ),
                              horizontalSpace(5.w),
                              Text(
                                "التلاوات",
                                style: TextStyle(
                                  color: selectedTab == 0
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(10.h),
            // Content (widget switching)
            Expanded(
              child: selectedTab == 0
                  ? const TilawatScreen()
                  : const QeraahScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
