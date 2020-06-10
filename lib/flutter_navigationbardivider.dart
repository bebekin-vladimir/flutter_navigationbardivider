import 'dart:async';
import 'dart:ui';

import 'package:flutter/services.dart';

class FlutterNavigationBarDivider {
  static const MethodChannel _channel =
      const MethodChannel('com.mart.flutter_navigationbardivider');

  /// Android only
  ///
  /// Get the navigation bar divider's color for Android version 9.0 and above.
  static Future<Color> get navigationBarDividerColor async {
    final value = await _channel.invokeMethod('getNavigationBarDividerColor');
    return value != null ? Color(value) : null;
  }

  /// Android only
  ///
  /// Set the navigation bar divider's color for Android version 9.0 and above.
  static Future<void> setNavigationBarDividerColor(Color color) =>
      _channel.invokeMethod('setNavigationBarDividerColor', {
        'color': color.value
      });
}
