#import "AppDelegate+SiriShortcuts.h"
#import <objc/runtime.h>

static void * UserActivityPropertyKey = &UserActivityPropertyKey;

@implementation AppDelegate (siriShortcuts)

- (NSUserActivity *)userActivity {
    return objc_getAssociatedObject(self, UserActivityPropertyKey);
}

- (void)setUserActivity:(NSUserActivity *)activity {
    objc_setAssociatedObject(self, UserActivityPropertyKey, activity, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


@end
