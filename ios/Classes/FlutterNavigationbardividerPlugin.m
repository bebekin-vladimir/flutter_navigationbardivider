#import "FlutterNavigationBarDividerPlugin.h"
#if __has_include(<flutter_navigationbardivider/flutter_navigationbardivider-Swift.h>)
#import <flutter_navigationbardivider/flutter_navigationbardivider-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_navigationbardivider-Swift.h"
#endif

@implementation FlutterNavigationBarDividerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterNavigationBarDividerPlugin registerWithRegistrar:registrar];
}
@end
