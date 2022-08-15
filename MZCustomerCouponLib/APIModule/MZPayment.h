//
//  MZPayment.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import <Foundation/Foundation.h>
#import "MZPaymentResponse.h"

NS_ASSUME_NONNULL_BEGIN

@interface MZPayment : NSObject
- (MZPaymentResponse *)getPaymentList: (NSString*)ptoken;

@end

NS_ASSUME_NONNULL_END
