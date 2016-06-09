#import "NSData+LHSData.h"
#import <CommonCrypto/CommonDigest.h>


@implementation NSData (LHSData)

- (NSData *)md5 {
    unsigned char result[CC_MD5_DIGEST_LENGTH];

    CC_MD5([self bytes], (CC_LONG)[self length], result);
    return [NSData dataWithBytes:result length:CC_MD5_DIGEST_LENGTH];
}

- (NSData *)sha1 {
    unsigned char result[CC_SHA1_DIGEST_LENGTH];

    CC_SHA1([self bytes], (CC_LONG)[self length], result);
    return [NSData dataWithBytes:result length:CC_SHA1_DIGEST_LENGTH];
}

- (NSString *)hexString {
    NSMutableString *stringBuffer = [NSMutableString stringWithCapacity:(self.length * 2)];
    const Byte *dataBuffer = self.bytes;

    for (int i = 0; i < self.length; ++i) {
        [stringBuffer appendFormat:@"%02x", (unsigned int)dataBuffer[i]];
    }

    return stringBuffer;
}

@end
