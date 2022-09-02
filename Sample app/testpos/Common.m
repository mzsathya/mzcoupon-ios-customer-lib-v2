//
//  Common.m
//  testpos
//
//  Created by Sathiyamoorthy on 30/08/22.
//

#import "Common.h"

@implementation Common
static NSString* _Accesstoken = NULL;

+(NSString*)Accesstoken {
    return _Accesstoken;
}
+(void)Accesstoken:(NSString *)pAccesstoken {
    _Accesstoken=pAccesstoken;
}
@end
