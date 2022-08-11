//
//  PaymentListModel.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "PaymentListModel.h"

@implementation PaymentListModel
@synthesize payment;

+ (Class)payment_class {
    return [PaymentData class];
}
@end
