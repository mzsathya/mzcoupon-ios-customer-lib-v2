//
//  MZIssueCouponResponse.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import <Foundation/Foundation.h>
#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface MZIssueCouponResponse : MZJastor

@property (nonatomic, strong) NSString *transaction_id;
@property (nonatomic, strong) NSString *updated_on;
@property (nonatomic, strong) NSString *po_status;
@property (nonatomic, strong) NSString *po_date;
@property (nonatomic, strong) NSString *pay_response;
@property (nonatomic, strong) NSString *merchant_id;
@property (nonatomic, strong) NSString *pay_receipt;
//@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) NSString *coupon_via;
@property (nonatomic, strong) NSString *po_total;
@property (nonatomic, strong) NSString *hash_code;
@property (nonatomic, strong) NSString *created_on;
@property (nonatomic, strong) NSString *reward_point;
@property (nonatomic, strong) NSString *payment_name;
@property (nonatomic, strong) NSString *customer_id;
@property (nonatomic, strong) NSString *po_no;
@property (nonatomic, strong) NSArray *customer_coupons;

@property (nonatomic, strong)NSError *error;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *message;
@property (nonatomic, copy) NSMutableArray *developerMessage;
@end

NS_ASSUME_NONNULL_END
