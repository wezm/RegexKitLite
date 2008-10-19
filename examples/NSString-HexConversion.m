#import "NSString-HexConversion.h"
#import <CoreFoundation/CFString.h>
#include <stdlib.h>

@implementation NSString (HexConversion)

-(NSInteger)hexValue
{
  CFStringRef cfSelf = (CFStringRef)self;
  UInt8 buffer[64];
  const char *cptr;

  if((cptr = CFStringGetCStringPtr(cfSelf, kCFStringEncodingMacRoman)) == NULL) {
    CFRange range     = CFRangeMake(0, CFStringGetLength(cfSelf));
    CFIndex converted = CFStringGetBytes(cfSelf, range, kCFStringEncodingUTF8, '?', false, &buffer[0], 60, NULL);
    buffer[converted] = 0;
    cptr              = (char *)&buffer[0];
  }

  return(strtol(cptr, NULL, 16));
}

@end