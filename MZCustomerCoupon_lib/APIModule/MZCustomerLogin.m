//
//  MZCustomerLogin.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/05/22.
//

#import "MZCustomerLogin.h"
#import "MZUtils.h"
#import "CustomerDataModel.h"
#import "MZLoginResponse.h"
#import "AuthToken.h"
#import "MZAuthTokenResponse.h"

@implementation MZCustomerLogin

-(MZAuthTokenResponse *)loginmerchantauth:(NSString *)pauth secrt:(nonnull NSString *)serc{
    MZAuthTokenResponse *returnvalue = [[MZAuthTokenResponse alloc]init];
    
    NSData *data = [MZUtils urlGetTokenRequest:[NSString stringWithFormat:@"https://auth.mzapi.mezzofy.com/v2/token"] authkey:pauth authsecrt:serc body:nil parameters:nil];
   
    if(data){
        NSError *error;
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        returnvalue=[[MZAuthTokenResponse alloc]initWithDictionary:json];
        
        [returnvalue setError:error];
    }
    return returnvalue;
}

- (MZLoginResponse *)CustomerSignup:(CustomerDataModel *)pcustomermodel token:(NSString*)ptoken{
    MZLoginResponse *returnvalue=[[MZLoginResponse alloc]init];
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[pcustomermodel toDictionary] options:kNilOptions error:&error];
    NSData *data =[MZUtils urlPostRequest:[NSString stringWithFormat:@"https://customer.mzapi.mezzofy.com/v2/signup"] token:ptoken body:jsonData parameters:nil];
    if(data){
        NSError *error;
        NSDictionary* json = [NSJSONSerialization
                              JSONObjectWithData:data
                              options:kNilOptions
                              error:&error];
        if(json)
            returnvalue=[[MZLoginResponse alloc]initWithDictionary:json];
        
       // [returnvalue setError:error];
    }
    return returnvalue;

}
-(MZLoginResponse *)LoginPlatform:(CustomerDeviceDataModel *)pdevicemod token:(NSString*)ptoken{
    MZLoginResponse *returnvalue=[[MZLoginResponse alloc]init];
    
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[pdevicemod toDictionary] options:kNilOptions error:&error];
    NSData *data =[MZUtils urlPostRequest:[NSString stringWithFormat:@"https://customer.mzapi.mezzofy.com/v2/loginauth"] token:ptoken body:jsonData parameters:nil];
    if(data){
        NSError *error;
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        NSLog(@"%@",json);
        if(json)
            returnvalue=[[MZLoginResponse alloc]initWithDictionary:json];
        
        //[returnvalue setCode:error];
        
    }
    return returnvalue;
}

- (MZLoginResponse *)CustomerUpdate:(NSString *)CustomerID CustomerData:(CustomerDataModel*)pcustomermodel token:(NSString*)ptoken{
    MZLoginResponse *returnvalue=[[MZLoginResponse alloc]init];
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[pcustomermodel toDictionary] options:kNilOptions error:&error];
    NSData *data =[MZUtils urlPutRequest:[NSString stringWithFormat:@"https://customer.mzapi.mezzofy.com/v2/profileupdate/%@",CustomerID] token:ptoken body:jsonData parameters:nil];
    if(data){
        NSError *error;
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        if(json)
            returnvalue=[[MZLoginResponse alloc]initWithDictionary:json];
        
       // [returnvalue setError:error];
    }
    return returnvalue;
    
}
- (MZLoginResponse *)PasswordForgot:(NSString*)email token:(NSString*)ptoken{
    MZLoginResponse *returnvalue=[[MZLoginResponse alloc]init];
    //NSError *error;
    //NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[pcustomermodel toDictionary] options:kNilOptions error:&error];
    NSData *data =[MZUtils urlPostRequest:[NSString stringWithFormat:@ "https://customer.mzapi.mezzofy.com/v2/forgotpassword/%@",email] token:ptoken body:nil parameters:nil];
    if(data){
        NSError *error;
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        if(json)
            returnvalue=[[MZLoginResponse alloc]initWithDictionary:json];
        
        //[returnvalue setError:error];
    }
    return returnvalue;
    
}

- (MZLoginResponse *)OtpPasswordForgot:(NSString*)CustomerID otp:(NSString*)potp CustomerData:(CustomerDataModel*)pnewpassword token:(NSString*)ptoken{
    MZLoginResponse *returnvalue=[[MZLoginResponse alloc]init];
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[pnewpassword toDictionary] options:kNilOptions error:&error];
    NSData *data =[MZUtils urlPutRequest:[NSString stringWithFormat:@ "https://customer.mzapi.mezzofy.com/v2/changepassword/%@?otp_code=%@&lang=en",CustomerID,potp] token:ptoken body:jsonData parameters:nil];
    if(data){
        NSError *error;
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        if(json)
            returnvalue=[[MZLoginResponse alloc]initWithDictionary:json];
        
        //[returnvalue setError:error];
    }
    return returnvalue;
    
}

- (MZLoginResponse *)PasswordChange:(NSString *)CustomerID CustomerData:(CustomerDataModel*)pcustomermodel token:(NSString*)ptoken{
    MZLoginResponse *returnvalue=[[MZLoginResponse alloc]init];
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[pcustomermodel toDictionary] options:kNilOptions error:&error];
    NSData *data =[MZUtils urlPutRequest:[NSString stringWithFormat:@"https://customer.mzapi.mezzofy.com/v2/changepassword/%@",CustomerID] token:ptoken body:jsonData parameters:nil];
    if(data){
        NSError *error;
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        if(json)
            returnvalue=[[MZLoginResponse alloc]initWithDictionary:json];
        
        //[returnvalue setError:error];
    }
    return returnvalue;
    
}

@end
