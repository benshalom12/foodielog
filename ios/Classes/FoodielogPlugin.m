#import "FoodielogPlugin.h"
#if __has_include(<foodielog/foodielog-Swift.h>)
#import <foodielog/foodielog-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "foodielog-Swift.h"
#endif

@implementation FoodielogPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFoodielogPlugin registerWithRegistrar:registrar];
}
@end
