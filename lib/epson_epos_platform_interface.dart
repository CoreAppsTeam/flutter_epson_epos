import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'epson_epos_method_channel.dart';

abstract class EpsonEposPlatform extends PlatformInterface {
  /// Constructs a EpsonEposPlatform.
  EpsonEposPlatform() : super(token: _token);

  static final Object _token = Object();

  static EpsonEposPlatform _instance = MethodChannelEpsonEpos();

  /// The default instance of [EpsonEposPlatform] to use.
  ///
  /// Defaults to [MethodChannelEpsonEpos].
  static EpsonEposPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [EpsonEposPlatform] when
  /// they register themselves.
  static set instance(EpsonEposPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
