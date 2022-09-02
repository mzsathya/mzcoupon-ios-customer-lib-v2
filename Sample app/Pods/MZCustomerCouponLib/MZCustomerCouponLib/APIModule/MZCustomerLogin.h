//
//  MZCustomerLogin.h
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/05/22.
//

#import <Foundation/Foundation.h>
#import "MZLoginResponse.h"
#import "CustomerDeviceDataModel.h"
#import "AuthToken.h"
#import "CustomerDataModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MZCustomerLogin : NSObject
//Access Token
- (AuthToken *)loginmerchantauth:(NSString *)pauth secrt:(NSString *)serc;
//Register
- (MZLoginResponse *)CustomerSignup:(CustomerDataModel *)pcustomermodel token:(NSString*)ptoken;
//Login
- (MZLoginResponse *)LoginPlatform:(CustomerDeviceDataModel *)pdevicemod token:(NSString*)ptoken;
//Profile Update
- (MZLoginResponse *)CustomerUpdate:(NSString *)CustomerID CustomerData:(CustomerDataModel*)pcustomermodel token:(NSString*)ptoken;
//Forget Password
- (MZLoginResponse *)PasswordForgot:(NSString*)email token:(NSString*)ptoken;
//OTP &new password
- (MZLoginResponse *)OtpPasswordForgot:(NSString*)CustomerID otp:(NSString*)potp CustomerData:(CustomerDataModel*)pnewpassword token:(NSString*)ptoken;
//Change Password
- (MZLoginResponse *)PasswordChange:(NSString *)CustomerID CustomerData:(CustomerDataModel*)pcustomermodel token:(NSString*)ptoken;

// Get Customer details
- (MZLoginResponse *)getCustomerDetailsByCustomerId:(NSString *)pcustomerId token:(NSString*)ptoken;

@end

NS_ASSUME_NONNULL_END
