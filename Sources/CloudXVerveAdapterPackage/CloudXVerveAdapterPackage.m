#import <CloudXVerveAdapter/CloudXVerveAdapter.h>

@interface CloudXVerveAdapterPackageLoader : NSObject
@end

@implementation CloudXVerveAdapterPackageLoader

+ (void)load {
    CloudXVerveAdapterRegister();
}

@end
