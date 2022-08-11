//
//  CouponTimingsData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface CouponTimingsData : MZJastor
@property (nonatomic, strong) NSString *open_time;
@property (nonatomic, strong) NSString *close_time;
@property (nonatomic, strong) NSString *monday;
@property (nonatomic, strong) NSString *tuesday;
@property (nonatomic, strong) NSString *wednesday;
@property (nonatomic, strong) NSString *thursday;
@property (nonatomic, strong) NSString *friday;
@property (nonatomic, strong) NSString *saturday;
@property (nonatomic, strong) NSString *sunday;
@property (nonatomic, strong) NSString *monday_open;
@property (nonatomic, strong) NSString *monday_close;
@property (nonatomic, strong) NSString *tuesday_open;
@property (nonatomic, strong) NSString *tuesday_close;
@property (nonatomic, strong) NSString *wednesday_open;
@property (nonatomic, strong) NSString *wednesday_close;
@property (nonatomic, strong) NSString *thursday_open;
@property (nonatomic, strong) NSString *thursday_close;
@property (nonatomic, strong) NSString *friday_open;
@property (nonatomic, strong) NSString *friday_close;
@property (nonatomic, strong) NSString *saturday_open;
@property (nonatomic, strong) NSString *saturday_close;
@property (nonatomic, strong) NSString *sunday_open;
@property (nonatomic, strong) NSString *sunday_close;
@end

NS_ASSUME_NONNULL_END
