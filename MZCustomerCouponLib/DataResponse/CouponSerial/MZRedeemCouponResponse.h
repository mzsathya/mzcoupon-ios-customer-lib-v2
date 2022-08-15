//
//  MZRedeemCouponResponse.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//


#import "MZJastor.h"
#import "RedeemResponseData.h"
#import "RedeemSerialTransactionData.h"
#import "CouponTransferData.h"
NS_ASSUME_NONNULL_BEGIN

@interface MZRedeemCouponResponse : MZJastor

@property (nonatomic, strong) NSString *transaction_id;
@property (nonatomic, strong) NSString *outlet_id;
@property (nonatomic, strong) NSString *merchant_id;
@property (nonatomic, strong) NSString *user_type;
@property (nonatomic, strong) NSString *lang;
@property (nonatomic, strong) NSString *transaction_type;
@property (nonatomic, strong) NSString *transaction_status;
@property (nonatomic, strong) NSString *created_on;
@property (nonatomic, strong) NSString *updated_on;
@property (nonatomic, strong) NSString *reference_id;

@property (nonatomic, strong) NSString *transfer_id;
@property (nonatomic, strong) NSString *from_customer_id;
@property (nonatomic, strong) NSString *sender_message;
@property (nonatomic, strong) CouponTransferData *to_customer;

@property (nonatomic, strong) NSString *transaction_ref_no;
@property (nonatomic, strong) NSString *reference_image;

@property (nonatomic, strong) RedeemSerialTransactionData *txn_serials;
@property (nonatomic, strong) RedeemResponseData *redeem_response;

@property (nonatomic, strong)NSError *error;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *message;
@property (nonatomic, copy) NSString *developerMessage;
@end

NS_ASSUME_NONNULL_END
