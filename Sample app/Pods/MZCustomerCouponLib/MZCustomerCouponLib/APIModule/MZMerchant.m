//
//  MZMerchant.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 09/08/22.
//

#import "MZMerchant.h"
#import "MZUtils.h"

@implementation MZMerchant
- (MZMerchantResponse *)GetMerchantDetails:(NSString *)pmerchantId token:(NSString*)ptoken{
    MZMerchantResponse *returnvalue=[[MZMerchantResponse alloc]init];
       
        NSData *data = [MZUtils urlGetRequest:[NSString stringWithFormat:@"https://merchant.mzapi.mezzofy.com/v2/%@",pmerchantId]  token:ptoken param:nil];
        NSError* error;
        if(data){
            NSDictionary *json = [NSJSONSerialization
                                  JSONObjectWithData:data
                                  options:kNilOptions
                                  error:&error];
            if (json)
                returnvalue=[[MZMerchantResponse alloc]initWithDictionary:json];
            
           // [returnvalue setError:error];
        }
        return  returnvalue;
    
}
- (MZMerchantSettingResponse *)GetMerchantDownloadSetting:(NSString*)ptoken{
    MZMerchantSettingResponse *returnvalue=[[MZMerchantSettingResponse alloc]init];
       
        NSData *data = [MZUtils urlGetRequest:[NSString stringWithFormat:@"https://merchant.mzapi.mezzofy.com/v2/merchantdownloadsettings/downloadsetting"]  token:ptoken param:nil];
        NSError* error;
        if(data){
            NSDictionary *json = [NSJSONSerialization
                                  JSONObjectWithData:data
                                  options:kNilOptions
                                  error:&error];
            if (json)
                returnvalue=[[MZMerchantSettingResponse alloc]initWithDictionary:json];
            
           // [returnvalue setError:error];
        }
        return  returnvalue;
}

- (MZMerchantOAuthResponse *)GetMerchantOAuth:(NSString*)pmerchantId Oauth:(nonnull NSString *)pauth secrt:(nonnull NSString *)serc {
    MZMerchantOAuthResponse *returnvalue=[[MZMerchantOAuthResponse alloc]init];
       
        NSData *data = [MZUtils urlGetMerchantOAuth:[NSString stringWithFormat:@"https://merchant.mzapi.mezzofy.com/v2/oauth/%@",pmerchantId] merchauthkey:pauth merchauthsecrt:serc param:nil];
        NSError* error;
        if(data){
            NSDictionary *json = [NSJSONSerialization
                                  JSONObjectWithData:data
                                  options:kNilOptions
                                  error:&error];
            if (json)
                returnvalue=[[MZMerchantOAuthResponse alloc]initWithDictionary:json];
            
           // [returnvalue setError:error];
        }
        return  returnvalue;
}
@end
