#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The "cloud" asset catalog image resource.
static NSString * const ACImageNameCloud AC_SWIFT_PRIVATE = @"cloud";

/// The "rain" asset catalog image resource.
static NSString * const ACImageNameRain AC_SWIFT_PRIVATE = @"rain";

/// The "snow" asset catalog image resource.
static NSString * const ACImageNameSnow AC_SWIFT_PRIVATE = @"snow";

/// The "sun" asset catalog image resource.
static NSString * const ACImageNameSun AC_SWIFT_PRIVATE = @"sun";

#undef AC_SWIFT_PRIVATE
