import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:sendrx_flutter_pusher/sendrx_flutter_pusher.dart';

void main() {
  const MethodChannel channel = MethodChannel('sendrx_flutter_pusher');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });
}
