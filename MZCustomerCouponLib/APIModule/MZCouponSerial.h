//
//  MZCouponSerial.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import <Foundation/Foundation.h>
#import "MZRedeemCouponResponse.h"
#import "RedeemTransactionModel.h"
#import "RedeemCouponCommitData.h"
#import "MZSerialCouponDetailsResponse.h"
#import "RedeemTransactionData.h"
#import "MZCouponSerialResponse.h"
#import "MZCouponOutletResponse.h"
#import "CouponTransferModel.h"
#import "CouponVoidModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MZCouponSerial : NSObject
- (MZSerialCouponDetailsResponse *)getSerialCouponDetailsByCouposerial:(NSString *)pcouponserial token:(NSString*)ptoken;
- (MZRedeemCouponResponse *)PostRedeemCouponHold:(RedeemTransactionModel *)predeemCouponmodel token:(NSString*)ptoken;
- (MZRedeemCouponResponse *)PostRedeemCouponCommit:(RedeemCouponCommitData *)predeemCouponCommit transactionId:(NSString*)ptransactionId token:(NSString*)ptoken;
- (MZRedeemCouponResponse *)postRedeemCouponRollback:(RedeemCouponCommitData *)predeemCouponCommit transactionId:(NSString*)ptransactionId token:(NSString*)ptoken;

- (MZCouponSerialResponse *)getCouponSerials:(NSString *)pcustomerId skip:(NSString *)pskip limit:(NSString *)plimit token:(NSString*)ptoken;
- (MZCouponSerialResponse *)getCouponSerialsByStatus:(NSString *)pcustomerId status:(NSString *)pstatus skip:(NSString *)pskip limit:(NSString *)plimit token:(NSString*)ptoken;
- (MZCouponSerialResponse *)getCouponSerialsByCouponId:(NSString *)pcustomerId couponId:(NSString *)pcouponId skip:(NSString *)pskip limit:(NSString *)plimit token:(NSString*)ptoken;
// Coupon Transfer
- (MZRedeemCouponResponse *)CouponTransfer:(CouponTransferModel *)ptransferCoupon token:(NSString*)ptoken;
// Coupon Void
- (MZRedeemCouponResponse *)CouponVoid:(CouponVoidModel *)pvoidCoupon token:(NSString*)ptoken;
//Redeem Void
- (MZRedeemCouponResponse *)RedeemCouponVoid:(CouponVoidModel *)pvoidCoupon token:(NSString*)ptoken;
//Get Outlet Details
- (MZCouponOutletResponse *)getOutletDetails:(NSString *)predeempasscode token:(NSString*)ptoken;

@end

NS_ASSUME_NONNULL_END
