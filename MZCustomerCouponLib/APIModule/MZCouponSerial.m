//
//  MZCouponSerial.m
//  MZCustomerCoupon_lib
//
//  Created by Sathya on 08/08/22.
//

#import "MZCouponSerial.h"
#import "MZUtils.h"

@implementation MZCouponSerial
- (MZSerialCouponDetailsResponse *)getSerialCouponDetailsByCouposerial:(NSString *)pcouponserial token:(NSString*)ptoken{
    MZSerialCouponDetailsResponse *returnvalue=[[MZSerialCouponDetailsResponse alloc]init];
   
    NSData *data = [MZUtils urlGetRequest:[NSString stringWithFormat:@"https://serial.mzapi.mezzofy.com/v2/%@?include_merchant=S",pcouponserial]  token:ptoken param:nil];
    NSError* error;
    if(data){
        NSDictionary *json = [NSJSONSerialization
                              JSONObjectWithData:data
                              options:kNilOptions
                              error:&error];
        if (json)
            returnvalue=[[MZSerialCouponDetailsResponse alloc]initWithDictionary:json];
        
       // [returnvalue setError:error];
    }
    return  returnvalue;
}
- (MZRedeemCouponResponse *)PostRedeemCouponHold:(RedeemTransactionModel *)predeemCouponmodel token:(NSString*)ptoken{
    MZRedeemCouponResponse *returnvalue=[[MZRedeemCouponResponse alloc]init];
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[predeemCouponmodel toDictionary] options:kNilOptions error:&error];
    NSData *data =[MZUtils urlPostRequest:[NSString stringWithFormat:@"https://transaction.mzapi.mezzofy.com/v2/redeem"] token:ptoken body:jsonData parameters:nil];
    if(data){
        NSError *error;
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        NSLog(@"%@",json);
        if(json)
            returnvalue=[[MZRedeemCouponResponse alloc]initWithDictionary:json];
        
        //[returnvalue setCode:error];
        
    }
    return returnvalue;
}
- (MZRedeemCouponResponse *)PostRedeemCouponCommit:(RedeemCouponCommitData *)predeemCouponCommit transactionId:(NSString*)ptransactionId token:(NSString*)ptoken{
    MZRedeemCouponResponse *returnvalue=[[MZRedeemCouponResponse alloc]init];
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[predeemCouponCommit toDictionary] options:kNilOptions error:&error];
    NSData *data =[MZUtils urlPostRequest:[NSString stringWithFormat:@"https://transaction.mzapi.mezzofy.com/v2/redeem/%@/commit",ptransactionId] token:ptoken body:jsonData parameters:nil];
    if(data){
        NSError *error;
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        NSLog(@"%@",json);
        if(json)
            returnvalue=[[MZRedeemCouponResponse alloc]initWithDictionary:json];
        
        //[returnvalue setCode:error];
        
    }
    return returnvalue;
}

- (MZRedeemCouponResponse *)postRedeemCouponRollback:(RedeemCouponCommitData *)predeemCouponCommit transactionId:(NSString*)ptransactionId token:(NSString*)ptoken{
    MZRedeemCouponResponse *returnvalue=[[MZRedeemCouponResponse alloc]init];
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[predeemCouponCommit toDictionary] options:kNilOptions error:&error];
    NSData *data =[MZUtils urlPostRequest:[NSString stringWithFormat:@"https://transaction.mzapi.mezzofy.com/v2/redeem/%@/rollback",ptransactionId] token:ptoken body:jsonData parameters:nil];
    if(data){
        NSError *error;
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        NSLog(@"%@",json);
        if(json)
            returnvalue=[[MZRedeemCouponResponse alloc]initWithDictionary:json];
        
        //[returnvalue setCode:error];
        
    }
    return returnvalue;
}


- (MZCouponSerialResponse *)getCouponSerials:(NSString *)pcustomerId skip:(NSString *)pskip limit:(NSString *)plimit token:(NSString*)ptoken{
    MZCouponSerialResponse *returnvalue=[[MZCouponSerialResponse alloc]init];
   
    NSData *data = [MZUtils urlGetRequest:[NSString stringWithFormat:@"https://serial.mzapi.mezzofy.com/v2/customer/%@?include_merchant=S&skip=%@&limit=%@",pcustomerId,pskip,plimit]  token:ptoken param:nil];
    NSError* error;
    if(data){
        NSDictionary *json = [NSJSONSerialization
                              JSONObjectWithData:data
                              options:kNilOptions
                              error:&error];
        if (json)
            returnvalue=[[MZCouponSerialResponse alloc]initWithDictionary:json];
        
       // [returnvalue setError:error];
    }
    return  returnvalue;
}

- (MZCouponSerialResponse *)getCouponSerialsByStatus:(NSString *)pcustomerId status:(NSString *)pstatus skip:(NSString *)pskip limit:(NSString *)plimit token:(NSString*)ptoken{
    MZCouponSerialResponse *returnvalue=[[MZCouponSerialResponse alloc]init];
   
    NSData *data = [MZUtils urlGetRequest:[NSString stringWithFormat:@"https://serial.mzapi.mezzofy.com/v2/customer/%@?include_merchant=S&status=%@&skip=%@&limit=%@",pcustomerId,pstatus,pskip,plimit]  token:ptoken param:nil];
    NSError* error;
    if(data){
        NSDictionary *json = [NSJSONSerialization
                              JSONObjectWithData:data
                              options:kNilOptions
                              error:&error];
        if (json)
            returnvalue=[[MZCouponSerialResponse alloc]initWithDictionary:json];
        
       // [returnvalue setError:error];
    }
    return  returnvalue;
}

- (MZCouponSerialResponse *)getCouponSerialsByCouponId:(NSString *)pcustomerId couponId:(NSString *)pcouponId skip:(NSString *)pskip limit:(NSString *)plimit token:(NSString*)ptoken{
    MZCouponSerialResponse *returnvalue=[[MZCouponSerialResponse alloc]init];
   
    NSData *data = [MZUtils urlGetRequest:[NSString stringWithFormat:@"https://serial.mzapi.mezzofy.com/v2/customer/%@?coupon_id='%@'&include_merchant=S&skip=%@&limit=%@",pcustomerId,pcouponId,pskip,plimit]  token:ptoken param:nil];
    NSError* error;
    if(data){
        NSDictionary *json = [NSJSONSerialization
                              JSONObjectWithData:data
                              options:kNilOptions
                              error:&error];
        if (json)
            returnvalue=[[MZCouponSerialResponse alloc]initWithDictionary:json];
        
       // [returnvalue setError:error];
    }
    return  returnvalue;
}

- (MZRedeemCouponResponse *)CouponTransfer:(CouponTransferModel *)ptransferCoupon token:(NSString*)ptoken{
    MZRedeemCouponResponse *returnvalue=[[MZRedeemCouponResponse alloc]init];
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[ptransferCoupon toDictionary] options:kNilOptions error:&error];
    NSData *data =[MZUtils urlPostRequest:[NSString stringWithFormat:@"https://transaction.mzapi.mezzofy.com/v2/transfer"] token:ptoken body:jsonData parameters:nil];
    if(data){
        NSError *error;
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        NSLog(@"%@",json);
        if(json)
            returnvalue=[[MZRedeemCouponResponse alloc]initWithDictionary:json];
        
        //[returnvalue setCode:error];
        
    }
    return returnvalue;
}

- (MZRedeemCouponResponse *)CouponVoid:(CouponVoidModel *)pvoidCoupon token:(NSString*)ptoken{
    MZRedeemCouponResponse *returnvalue=[[MZRedeemCouponResponse alloc]init];
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:[pvoidCoupon toDictionary] options:kNilOptions error:&error];
    NSData *data =[MZUtils urlPostRequest:[NSString stringWithFormat:@"https://transaction.mzapi.mezzofy.com/v2/void/issue"] token:ptoken body:jsonData parameters:nil];
    if(data){
        NSError *error;
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        NSLog(@"%@",json);
        if(json)
            returnvalue=[[MZRedeemCouponResponse alloc]initWithDictionary:json];
        
        //[returnvalue setCode:error];
        
    }
    return returnvalue;
}

- (MZCouponOutletResponse *)getOutletDetails:(NSString *)predeempasscode token:(NSString*)ptoken{
    MZCouponOutletResponse *returnvalue=[[MZCouponOutletResponse alloc]init];
   
    NSData *data = [MZUtils urlGetRequest:[NSString stringWithFormat:@"https://outlet.mzapi.mezzofy.com/v2?outlet_redeem_pass=%@",predeempasscode]  token:ptoken param:nil];
    NSError* error;
    if(data){
        NSDictionary *json = [NSJSONSerialization
                              JSONObjectWithData:data
                              options:kNilOptions
                              error:&error];
        if (json)
            returnvalue=[[MZCouponOutletResponse alloc]initWithDictionary:json];
        
       // [returnvalue setError:error];
    }
    return  returnvalue;
}
@end
