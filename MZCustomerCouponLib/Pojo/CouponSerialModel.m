//
//  CouponSerialModel.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "CouponSerialModel.h"
#import "CouponImageListData.h"
#import "SerialOutletListData.h"

@implementation CouponSerialModel
@synthesize coupon;
@synthesize serial;
@synthesize merchant;
@synthesize coupon_images;
@synthesize outlets;

+ (Class)coupon_class {
    return [CouponSerialData class];
}

+ (Class)serial_class {
    return [SerialData class];
}

+ (Class)merchant_class {
    return [CouponMerchantData class];
}

+ (Class)coupon_images_class {
    return [CouponImageListData class];
}

+ (Class)outlets_class {
    return [SerialOutletListData class];
}
@end
