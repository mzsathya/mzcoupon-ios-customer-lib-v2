//
//  _CustomerDeviceData.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/05/22.
//

#import "MZJastor.h"

@interface CustomerDeviceData : MZJastor

@property (nonatomic, strong) NSString *device_token;
@property (nonatomic, strong) NSString *device_name;

@end
