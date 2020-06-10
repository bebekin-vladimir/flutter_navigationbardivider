import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_navigationbardivider/flutter_navigationbardivider.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_navigationbardivider');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterNavigationBarDivider.platformVersion, '42');
  });
}
