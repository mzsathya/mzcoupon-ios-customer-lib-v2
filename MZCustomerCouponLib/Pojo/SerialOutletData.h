//
//  SerialOutletData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 10/08/22.
//

#import "MZJastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface SerialOutletData : MZJastor
@property (nonatomic, strong) NSString *outlet_id;
@property (nonatomic, strong) NSString *outlet_name;
@property (nonatomic, strong) NSString *outlet_address;
@property (nonatomic, strong) NSString *outlet_latitude;
@property (nonatomic, strong) NSString *outlet_longitude;
@property (nonatomic, strong) NSString *outlet_location;
@property (nonatomic, strong) NSString *outlet_contact;
@property (nonatomic, strong) NSString *outlet_status;
@end

NS_ASSUME_NONNULL_END
