import Flutter
import UIKit

public class SwiftFlutterNavigationBarDividerPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_navigationbardivider", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterNavigationBarDividerPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result(nil)
  }
}
