import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AudioProvider extends ChangeNotifier {
  int? _audionumber;
  int? get audionumber => _audionumber;
  void audioplayer(audionumber) {
    final player = AudioPlayer();
    player.play(AssetSource('assets_note$audionumber.wav'));
    notifyListeners();
  }
}

final audioprovider = ChangeNotifierProvider((ref) => AudioProvider());
