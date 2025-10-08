import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quraankareem/core/networking/api_service.dart';
import 'package:quraankareem/core/networking/dio_factory.dart';
import 'package:quraankareem/core/theming/styles.dart';
import 'package:quraankareem/features/home/data/models/ayaat_request.dart';
import 'package:quraankareem/features/home/data/repos/ayaat_repo.dart';
import 'package:quraankareem/features/home/logic/cubit/ayaat_cubit.dart';
import 'package:quraankareem/features/home/logic/cubit/ayaat_state.dart';

class QeraahScreen extends StatelessWidget {
  const QeraahScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final cubit = AyaatCubit(AyaatRepo(ApiService(DioFactory.getDio())));
        // Call API immediately when cubit is created
        cubit.emitAyaatState(
          AyaatRequest(number: 0, name: '', engName: '', revelationType: ''),
        );
        return cubit;
      },
      child: BlocBuilder<AyaatCubit, AyaatState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text("Initializing...")),
            loading: () => const Center(child: CircularProgressIndicator()),
            success: (data) {
              final surahList = data.data?.surahs?.references ?? [];

              if (surahList.isEmpty) {
                return const Center(child: Text("No surahs found"));
              }

              return ListView.builder(
                itemCount: surahList.length,
                itemBuilder: (context, index) {
                  final surah = surahList[index];
                  final isEven = index % 2 == 0; // 👈 Check if index is even

                  return Container(
                    color: isEven
                        ? Colors.white
                        : Colors.grey[200], // 👈 alternate background
                    child: ListTile(
                      // leading: Text(
                      //   '${surah.number}',
                      //   style: const TextStyle(fontWeight: FontWeight.bold),
                      // ),
                      title: Text(
                        surah.name ?? '',
                        style: TextStyles.font20BlackBold,
                      ),
                      subtitle: Directionality(
                        textDirection: TextDirection.ltr,
                        child: Text(
                          surah.englishName ?? '',
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            error: (error) => Center(
              child: Text(
                "❌ $error",
                style: const TextStyle(color: Colors.red),
              ),
            ),
          );
        },
      ),
    );
  }
}
