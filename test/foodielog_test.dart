import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import '../example/lib/foodielog.dart';

void main() {
  const MethodChannel channel = MethodChannel('foodielog');

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
    expect(await Foodielog.platformVersion, '42');
  });
}
