#import "SoundMeterPlugin.h"
#if __has_include(<sound_meter/sound_meter-Swift.h>)
#import <sound_meter/sound_meter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "sound_meter-Swift.h"
#endif

@implementation SoundMeterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSoundMeterPlugin registerWithRegistrar:registrar];
}
@end
