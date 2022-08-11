//
//  MZAuthTokenResponse.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 10/06/22.
//

#import <UIKit/UIKit.h>
#import "MZJastor.h"
NS_ASSUME_NONNULL_BEGIN

@interface MZAuthTokenResponse : MZJastor
@property (nonatomic, strong) NSString *accessToken;
@property (nonatomic, strong) NSString *accessTokenExpiresAt;
@property (nonatomic, strong) NSError *error;
@end

NS_ASSUME_NONNULL_END
