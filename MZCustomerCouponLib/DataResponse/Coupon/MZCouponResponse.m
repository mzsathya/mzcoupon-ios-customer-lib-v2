//
//  MZCouponResponse.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "MZCouponResponse.h"
#import "CouponListData.h"
@implementation MZCouponResponse
@synthesize summary;
@synthesize results;

@synthesize error;
@synthesize developerMessage;
@synthesize message;
@synthesize status;
@synthesize code;

+ (Class)summary_class {
    return [SummaryData class];
}
+ (Class)results_class {
    return [CouponListData class];
}

@end
