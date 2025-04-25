#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The resource bundle ID.
static NSString * const ACBundleID AC_SWIFT_PRIVATE = @"hyo.UIPractice0";

/// The "heroBackground" asset catalog color resource.
static NSString * const ACColorNameHeroBackground AC_SWIFT_PRIVATE = @"heroBackground";

/// The "apple" asset catalog image resource.
static NSString * const ACImageNameApple AC_SWIFT_PRIVATE = @"apple";

/// The "bkg" asset catalog image resource.
static NSString * const ACImageNameBkg AC_SWIFT_PRIVATE = @"bkg";

/// The "facebook" asset catalog image resource.
static NSString * const ACImageNameFacebook AC_SWIFT_PRIVATE = @"facebook";

/// The "google" asset catalog image resource.
static NSString * const ACImageNameGoogle AC_SWIFT_PRIVATE = @"google";

#undef AC_SWIFT_PRIVATE
