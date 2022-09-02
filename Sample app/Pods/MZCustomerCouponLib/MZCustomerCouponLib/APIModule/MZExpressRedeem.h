//
//  MZExpressRedeem.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import <Foundation/Foundation.h>
#import "MZRedeemCouponResponse.h"
#import "RedeemTransactionModel.h"
#import "ReferenceData.h"

NS_ASSUME_NONNULL_BEGIN

@interface MZExpressRedeem : NSObject
- (MZRedeemCouponResponse *)ExpressRedeemCoupon:(RedeemTransactionModel *)predeemCouponmodel token:(NSString*)ptoken;
- (MZRedeemCouponResponse *)ExpiryCouponRedeem:(RedeemTransactionModel *)predeemCouponmodel supervisorNo:(NSString *)psupervisorNo token:(NSString*)ptoken;
- (MZRedeemCouponResponse *)UpdateReferenceCouponRedeem:(ReferenceData *)preference transactionId:(NSString *)ptransactionId token:(NSString*)ptoken;
@end

NS_ASSUME_NONNULL_END
