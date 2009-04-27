#import <Foundation/NSEnumerator.h>
#import <Foundation/NSString.h>
#import <stddef.h>

#warning The functionality provided by RKLMatchEnumerator has been deprecated in favor of '- componentsSeparatedByRegex:'

@interface NSString (RegexKitLiteEnumeratorAdditions)
- (NSEnumerator *)matchEnumeratorWithRegex:(NSString *)regex;
@end
