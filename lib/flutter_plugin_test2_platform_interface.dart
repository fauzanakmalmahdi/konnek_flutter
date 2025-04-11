import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_plugin_test2_method_channel.dart';

abstract class FlutterPluginTest2Platform extends PlatformInterface {
  /// Constructs a FlutterPluginTest2Platform.
  FlutterPluginTest2Platform() : super(token: _token);

  static final Object _token = Object();

  static FlutterPluginTest2Platform _instance = MethodChannelFlutterPluginTest2();

  /// The default instance of [FlutterPluginTest2Platform] to use.
  ///
  /// Defaults to [MethodChannelFlutterPluginTest2].
  static FlutterPluginTest2Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterPluginTest2Platform] when
  /// they register themselves.
  static set instance(FlutterPluginTest2Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
