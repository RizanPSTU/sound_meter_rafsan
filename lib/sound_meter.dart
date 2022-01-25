import 'dart:async';

import 'package:flutter/services.dart';

class SoundMeter {
  static const MethodChannel _channel = MethodChannel('sound_meter');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<bool> get hasMicrophonePermission async {
    final bool value = await _channel.invokeMethod('hasMicrophonePermission');
    return value;
  }
}
