//
//  MZCouponResponse.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//
#import <Foundation/Foundation.h>
#import "MZJastor.h"
#import "SummaryData.h"
NS_ASSUME_NONNULL_BEGIN

@interface MZCouponResponse : MZJastor

@property (nonatomic, strong) SummaryData *summary;
@property (nonatomic, strong) NSMutableArray *results;

@property (nonatomic, strong)NSError *error;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *message;
@property (nonatomic, copy) NSString *developerMessage;
@end

NS_ASSUME_NONNULL_END
