
#import <Foundation/Foundation.h>
#import "SILManager.h"
#import "Hello.pbobjc.h"

@interface SILManager (HelloDemo)

// This is a hello demo get
+ (void)helloGetWithCompletion:(void (^)(SILHelloResponse *response, SILResponseCode code, NSError *error))handler
                    AndContent:(NSString *)content
                         AndId:(NSUInteger)id
;
// This is a hello demo post
+ (void)helloPostWithCompletion:(void (^)(SILHelloResponse *response, SILResponseCode code, NSError *error))handler
                     AndRequest:(SILHelloRequest *)request
;
@end
