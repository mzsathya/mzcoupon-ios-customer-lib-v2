//
//  SerialOutletListData.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 10/08/22.
//

#import "SerialOutletListData.h"

@implementation SerialOutletListData
@synthesize outlet;

+ (Class)outlet_class {
    return [SerialOutletData class];
}
@end
