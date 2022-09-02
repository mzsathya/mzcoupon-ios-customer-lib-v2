//
//  MZCouponSerialResponse.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZCouponSerialResponse.h"
#import "CouponSerialListModel.h"
@implementation MZCouponSerialResponse
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
    return [CouponSerialListModel class];
}
@end
