import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'epson_epos_platform_interface.dart';

/// An implementation of [EpsonEposPlatform] that uses method channels.
class MethodChannelEpsonEpos extends EpsonEposPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('epson_epos');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
