//
//  AuthToken.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 11/05/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AuthToken : NSObject

@property (nonatomic, strong) NSString *accessToken;
@property (nonatomic, strong) NSString *accessTokenExpiresAt;
@property (nonatomic, strong) NSString *refreshToken;
@property (nonatomic, strong) NSString *refreshTokenExpiresAt;
@property (nonatomic, strong) NSError *error;

//- (id) initWithDictionary:(NSDictionary *) dict;

@end

NS_ASSUME_NONNULL_END
