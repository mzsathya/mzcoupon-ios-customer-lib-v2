//
//  MZMerchantResponse.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZMerchantResponse.h"

@implementation MZMerchantResponse
@synthesize merchant;

@synthesize error;
@synthesize developerMessage;
@synthesize message;
@synthesize status;
@synthesize code;

+ (Class)merchant_class {
    return [MerchantData class];
}
@end
