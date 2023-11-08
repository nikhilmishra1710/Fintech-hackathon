// Generated file. Do not edit.
// This file is generated from template in file `flutter_tools/lib/src/flutter_plugins.dart`.

// @dart = 2.12

import 'dart:io'; // flutter_ignore: dart_io_import.

// Import only one instance of these packages.
import 'package:path_provider_android/path_provider_android.dart';
import 'package/sqflite/sqflite.dart';
import 'package/url_launcher_android/url_launcher_android.dart';

import 'package/path_provider_foundation/path_provider_foundation.dart';
import 'package/url_launcher_ios/url_launcher_ios.dart';

import 'package/path_provider_linux/path_provider_linux.dart';
import 'package/url_launcher_linux/url_launcher_linux.dart';

import 'package/path_provider_windows/path_provider_windows.dart';
import 'package/url_launcher_windows/url_launcher_windows.dart';

@pragma('vm:entry-point')
class _PluginRegistrant {

  @pragma('vm:entry-point')
  static void register() {
    if (Platform.isAndroid) {
      registerPlugin(PathProviderAndroid, 'path_provider_android');
      registerPlugin(SqflitePlugin, 'sqflite');
      registerPlugin(UrlLauncherAndroid, 'url_launcher_android');
    } else if (Platform.isIOS) {
      registerPlugin(PathProviderFoundation, 'path_provider_foundation');
      registerPlugin(SqflitePlugin, 'sqflite');
      registerPlugin(UrlLauncherIOS, 'url_launcher_ios');
    } else if (Platform.isLinux) {
      registerPlugin(PathProviderLinux, 'path_provider_linux');
      registerPlugin(UrlLauncherLinux, 'url_launcher_linux');
    } else if (Platform.isMacOS) {
      registerPlugin(PathProviderFoundation, 'path_provider_foundation');
      registerPlugin(SqflitePlugin, 'sqflite');
      registerPlugin(UrlLauncherMacOS, 'url_launcher_macos');
    } else if (Platform.isWindows) {
      registerPlugin(PathProviderWindows, 'path_provider_windows');
      registerPlugin(UrlLauncherWindows, 'url_launcher_windows');
    }
  }

  static void registerPlugin(Object plugin, String pluginName) {
    try {
      (plugin as dynamic).registerWith();
    } catch (err) {
      print(
        '`$pluginName` threw an error: $err. '
        'The app may not function as expected until you remove this plugin from pubspec.yaml',
      );
    }
  }
}
