import 'package:flutter_test/flutter_test.dart';
// import 'package:epson_epos/epson_epos.dart';
import 'package:epson_epos/epson_epos_platform_interface.dart';
// import 'package:epson_epos/epson_epos_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockEpsonEposPlatform
    with MockPlatformInterfaceMixin
    implements EpsonEposPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

// void main() {
//   final EpsonEposPlatform initialPlatform = EpsonEposPlatform.instance;

//   test('$MethodChannelEpsonEpos is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelEpsonEpos>());
//   });

//   test('getPlatformVersion', () async {
//     EpsonEpos epsonEposPlugin = EpsonEpos();
//     MockEpsonEposPlatform fakePlatform = MockEpsonEposPlatform();
//     EpsonEposPlatform.instance = fakePlatform;

//     expect(await epsonEposPlugin.getPlatformVersion(), '42');
//   });
// }
