#import "PusherChannelsFlutterPlugin.h"
#if __has_include(<sendrx_flutter_pusher/sendrx_flutter_pusher-Swift.h>)
#import <sendrx_flutter_pusher/sendrx_flutter_pusher-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "sendrx_flutter_pusher-Swift.h"
#endif

@implementation PusherChannelsFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPusherChannelsFlutterPlugin registerWithRegistrar:registrar];
}
@end
