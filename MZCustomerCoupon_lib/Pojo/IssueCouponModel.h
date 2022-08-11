//
//  IssueCouponModel.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "MZJastor.h"
#import "CouponData.h"
#import "IssueCustomerData.h"
NS_ASSUME_NONNULL_BEGIN

@interface IssueCouponModel : MZJastor
@property (nonatomic, strong) IssueCustomerData *customer;
@property (nonatomic, strong) NSMutableArray *coupons;
@property (nonatomic, strong) NSString *delivery_method;
@property (nonatomic, strong) NSString *transaction_amount;
@property (nonatomic, strong) NSString *lang;
@property (nonatomic, strong) NSString *outlet_id;

@property (nonatomic, strong)NSError *error;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *message;
@property (nonatomic, copy) NSMutableArray *developerMessage;
@end

NS_ASSUME_NONNULL_END
