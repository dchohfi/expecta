#import "EXMatchers+toBeKindOf.h"

EXMatcherImplementationBegin(toBeKindOf, (Class expected)) {
  match(^BOOL{
    return [actual isKindOfClass:expected];
  });

  failureMessageForTo(^{
    return [NSString stringWithFormat:@"expected: a kind of %@, got: an instance of %@, which is not a kind of %@", [expected class], [actual class], [expected class]];
  });

  failureMessageForNotTo(^{
    return [NSString stringWithFormat:@"expected: not a kind of %@, got: an instance of %@, which is a kind of %@", [expected class], [actual class], [expected class]];
  });
}
EXMatcherImplementationEnd
