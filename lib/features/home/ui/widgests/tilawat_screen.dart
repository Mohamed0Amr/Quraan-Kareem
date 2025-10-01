import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TilawatScreen extends StatelessWidget {
  const TilawatScreen({Key? key}) : super(key: key);

  final List<Map<String, String>> reciters = const [
    {
      "nameAr": "عبد الباسط عبد الصمد",
      "nameEn": "Abdelbasset",
      "image": "https://i.imgur.com/6J0D7wF.png"
    },
    {
      "nameAr": "ماهر المعيقلي",
      "nameEn": "Maher Al Mueaqly",
      "image": "https://i.imgur.com/8KzVj8F.png"
    },
    {
      "nameAr": "محمود خليل الحصري",
      "nameEn": "Mahmoud Khalil",
      "image": "https://i.imgur.com/3W0vfjf.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search Box
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: TextField(
            decoration: InputDecoration(
              hintText: "ابحث عن قارئ",
              prefixIcon: const Icon(Icons.search),
              filled: true,
              fillColor: Colors.grey.shade100,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),

        // Reciters List
        Expanded(
          child: ListView.builder(
            itemCount: reciters.length,
            itemBuilder: (context, index) {
              final reciter = reciters[index];
              return ListTile(
                leading: CircleAvatar(
                  radius: 28.r,
                  backgroundImage: NetworkImage(reciter["image"]!),
                ),
                title: Text(
                  reciter["nameAr"]!,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                subtitle: Text(
                  reciter["nameEn"]!,
                  style: const TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  // TODO: Add action when tapping on a reciter
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
