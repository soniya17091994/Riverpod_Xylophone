import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'audio_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(children: [
        CommonWidget(audionumber: 1, color: Colors.red),
        CommonWidget(audionumber: 2, color: Colors.orangeAccent),
        CommonWidget(audionumber: 3, color: Colors.yellowAccent),
        CommonWidget(audionumber: 4, color: Colors.green),
        CommonWidget(audionumber: 5, color: Colors.teal),
        CommonWidget(audionumber: 6, color: Colors.blue),
        CommonWidget(audionumber: 7, color: Colors.purple),
      ]),
    );
  }
}

// ignore: must_be_immutable
class CommonWidget extends ConsumerWidget {
  int audionumber;
  var color;
  CommonWidget({super.key, required this.audionumber, required this.color});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final audioNotifier = ref.watch(audioprovider);
    return GestureDetector(
        child: Container(
          height: MediaQuery.of(context).size.height / 7,
          width: MediaQuery.of(context).size.width,
          color: color,
        ),
        onTap: () => audioNotifier.audioplayer(audionumber));
  }
}
