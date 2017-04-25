
#import "SILRequester.h"
#import "SILManager+HelloDemo.h"

@implementation SILManager (HelloDemo)

// This is a hello demo get
+ (void)helloGetWithCompletion:(void (^)(SILHelloResponse *response, SILResponseCode code, NSError *error))handler
                        AndFoo:(NSString *)foo
                         AndID:(NSUInteger)ID
{
    NSString *URL = [NSString stringWithFormat:@"%@/hello/{ID}/get?foo={foo}", [SILManager instance].serverURL];
    URL = [URL stringByReplacingOccurrencesOfString:@"{foo}" withString:[NSString stringWithFormat:@"%@", foo]];
    URL = [URL stringByReplacingOccurrencesOfString:@"{ID}" withString:[NSString stringWithFormat:@"%lu", ID]];
    [SILRequester requestWithMethod:SILRequestMethodGET
                             andTag:@"helloGetTag"
                             andURL:URL
                      andGPBMessage:nil
                    andResponseType:[SILHelloResponse class]
                  completionHandler:handler];
}

// This is a hello demo post
+ (void)helloPostWithCompletion:(void (^)(SILHelloResponse *response, SILResponseCode code, NSError *error))handler
                     AndRequest:(SILHelloRequest *)request
{
    NSString *URL = [NSString stringWithFormat:@"%@/hello/post", [SILManager instance].serverURL];
    [SILRequester requestWithMethod:SILRequestMethodPOST
                             andTag:@"helloPostTag"
                             andURL:URL
                      andGPBMessage:request
                    andResponseType:[SILHelloResponse class]
                  completionHandler:handler];
}

@end
