package com.mart.flutter_navigationbardivider

import android.app.Activity
import android.os.Build
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar

/** FlutterNavigationBarDividerPlugin */
class FlutterNavigationBarDividerPlugin private constructor(private val activity: Activity?) : MethodCallHandler {

  @Suppress("unused")
  companion object {
    @JvmStatic
    fun registerWith(registrar: Registrar) =
            MethodChannel(registrar.messenger(), "com.mart.flutter_navigationbardivider")
                    .setMethodCallHandler(FlutterNavigationBarDividerPlugin(registrar.activity()))
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    if (activity == null) return result.success(null)

    when (call.method) {
      "getNavigationBarDividerColor" -> {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
          result.success(activity.window.navigationBarDividerColor)
        } else {
          result.success(null)
        }
      }
      "setNavigationBarDividerColor" -> {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
          activity.window.navigationBarDividerColor = call.argument("color")!!
        }
        result.success(null)
      }
      else -> result.notImplemented()
    }
  }
}
