#import <Foundation/NSAutoreleasePool.h>
#import "RegexKitLite.h"
#import "RKLMatchEnumerator.h"

int main(int argc, char *argv[]) {
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  NSString     *searchString    = @"one\ntwo\n\nfour\n";
  NSEnumerator *matchEnumerator = NULL;
  NSString     *regexString     = @"(?m)^.*$";

  NSLog(@"searchString: '%@'", searchString);
  NSLog(@"regexString : '%@'", regexString);

  matchEnumerator = [searchString matchEnumeratorWithRegex:regexString];

  NSUInteger  line          = 0;
  NSString   *matchedString = NULL;

  while((matchedString = [matchEnumerator nextObject]) != NULL) {
    NSLog(@"%d: %d '%@'", ++line, [matchedString length], matchedString);
  }

  [pool release];
  return(0);
}
