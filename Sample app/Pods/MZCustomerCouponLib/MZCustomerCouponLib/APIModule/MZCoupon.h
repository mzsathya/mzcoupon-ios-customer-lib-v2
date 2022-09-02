//
//  MZCoupon.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import <Foundation/Foundation.h>
#import "MZCouponResponse.h"
#import "MZCouponDetailsResponse.h"
#import "MZIssueCouponResponse.h"
#import "IssueCouponModel.h"
#import "IssueCouponCommitData.h"

NS_ASSUME_NONNULL_BEGIN

@interface MZCoupon : NSObject
- (MZCouponResponse *)getCoupons:(NSString *)pskip limit:(NSString *)plimit token:(NSString*)ptoken;
- (MZCouponResponse *)getCouponsByOutletId:(NSString *)poutletId skip:(NSString *)pskip limit:(NSString *)plimit token:(NSString*)ptoken;
- (MZCouponDetailsResponse *)getCouponDetailsByCoupoId:(NSString *)pcouponID token:(NSString*)ptoken;
- (MZIssueCouponResponse *)PostIssueCouponHold:(IssueCouponModel *)pissueCouponmodel token:(NSString*)ptoken;
- (MZIssueCouponResponse *)PostIssueCouponCommit:(IssueCouponCommitData *)pissueCouponCommit transactionId:(NSString*)ptransactionId token:(NSString*)ptoken;
- (MZIssueCouponResponse *)postIssueCouponRollback:(IssueCouponCommitData *)pissueCouponCommit transactionId:(NSString*)ptransactionId token:(NSString*)ptoken;

@end

NS_ASSUME_NONNULL_END
