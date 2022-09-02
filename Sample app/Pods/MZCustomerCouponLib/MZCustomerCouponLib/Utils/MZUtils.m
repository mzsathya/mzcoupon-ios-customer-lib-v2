//
//  MZUtils.m
//  Mezzofy
//
//  Created by Mezzofy on 07/08/14.
//  Copyright © 2018 Mezzofy. All rights reserved.
//

#import "MZUtils.h"

@implementation MZUtils


+ (NSString *)makeImagePath:(NSString *)imagename {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDir = [paths objectAtIndex:0];
    NSString *filePath=[NSString stringWithFormat:@"%@/%@",documentsDir,imagename];
    return filePath;
}

+ (NSNumber*) currencyFormatToDouble:(NSString *)value
{
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc] init];
    formatter.numberStyle = NSNumberFormatterCurrencyStyle;
    
    NSNumber *retval = [formatter numberFromString:value];
    return retval;
}

+ (NSString *)currencyFormat:(NSNumber *)value Currency:(NSString*)pcurr
{
    NSNumberFormatter * formatter = [[NSNumberFormatter alloc] init];
    
    formatter.numberStyle = NSNumberFormatterCurrencyStyle;
    [formatter setCurrencyCode:pcurr];
    NSString *strval =[formatter stringFromNumber:value];
    return strval;
}

+ (NSString *)getFormatedDate:(NSString*)str SrcFormat:(NSString*)psrcformat DstFormat:(NSString*)pdstformat{
    
    // convert to date
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    // ignore +11 and use timezone name instead of seconds from gmt
    [dateFormat setDateFormat:psrcformat] ; // ]@"YYYY-MM-dd'T'HH:mm:ss'+11:00'"];
    NSDate *dte = [dateFormat dateFromString:str];
    
    // back to string
    NSDateFormatter *dateFormat2 = [[NSDateFormatter alloc] init];
    [dateFormat2 setDateFormat:pdstformat]; //@"YYYY-MM-dd'T'HH:mm:ssZZZ"];
    NSString *dateString = [dateFormat2 stringFromDate:dte];
    
    return dateString;
}

+ (NSString *)getCurrentDate:(NSString *)fmt {
    
    NSString *retval = NULL;
    // Get Date
    NSDate *localDate = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    
    dateFormatter.dateFormat = fmt; //@"yyyy-MM-dd";
    
    retval = [dateFormatter stringFromDate: localDate];
    return retval;
}

+ (NSString *)formatDate:(NSDate *)pdate Format:(NSString *)fmt {
    
    NSString *retval = NULL;
    // Get Date
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    
    dateFormatter.dateFormat = fmt; //@"yyyy-MM-dd";
    
    retval = [dateFormatter stringFromDate: pdate];
    return retval;
}

+(NSString *)generateUUID {
    NSString *UUID = [[NSUUID UUID] UUIDString];
    return UUID;
}

+(MKCoordinateRegion) getRegionByMiles:(double)miles Location:(CLLocationCoordinate2D)newLocation{
    
    double scalingFactor = ABS( (cos(2 * M_PI * newLocation.latitude / 360.0) ));
    
    MKCoordinateSpan span;
    
    span.latitudeDelta = miles/69.0;
    span.longitudeDelta = miles/(scalingFactor * 69.0);
    
    MKCoordinateRegion region;
    region.span = span;
    region.center = newLocation;
    
    return region;
}
+ (NSData *)urlGetMerchantOAuth:(NSString *)purl merchauthkey:(NSString *)pmerchauthkey merchauthsecrt:(NSString *)pmerchsecrt param:(NSMutableDictionary*)pparam {
   // NSURL *baseURL = [NSURL URLWithString:[MZUtils pathsetting]];
    NSLog(@"%@", purl);
    
    __block NSData *retdata = NULL;
    
    dispatch_semaphore_t semaphore = dispatch_semaphore_create(0);
    NSData *plainData = [[NSString stringWithFormat:@"%@:%@",pmerchauthkey,pmerchsecrt] dataUsingEncoding:NSUTF8StringEncoding];
    NSString *encodedUsernameAndPassword = [plainData base64EncodedStringWithOptions:0];
    
    
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.completionQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
     NSString *request =[NSString stringWithFormat:@"%@",purl];
    if(pparam == NULL)
        pparam = [[NSMutableDictionary alloc]init];
    
    NSMutableURLRequest *req = [[AFJSONRequestSerializer serializer] requestWithMethod:@"GET" URLString:request parameters:pparam error:nil];
    
    req.timeoutInterval= [[[NSUserDefaults standardUserDefaults] valueForKey:@"timeoutInterval"] longValue];
    [req setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [req setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [req addValue:[NSString stringWithFormat:@"Basic %@", encodedUsernameAndPassword] forHTTPHeaderField:@"Authorization"];
    
    [[manager dataTaskWithRequest:req uploadProgress:nil downloadProgress:nil completionHandler:^(NSURLResponse * _Nonnull response, NSData* _Nullable responseObject, NSError * _Nullable error) {
        
        if (!error) {
            retdata = responseObject;
            dispatch_semaphore_signal(semaphore);
            
        } else {
            retdata = (NSData *)error.userInfo[AFNetworkingOperationFailingURLResponseDataErrorKey];
            dispatch_semaphore_signal(semaphore);
        }
    }]resume];
    
    
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
    
    
    return retdata;
}

+ (NSData *)urlGetTokenRequest:(NSString *)purl authkey:(NSString *)pauthkey authsecrt:(NSString *)psecrt body:(NSData *)pbody parameters:(NSMutableDictionary *)pparam {
    NSLog(@"%@", purl);
    
    __block NSData *retdata = NULL;
    
    dispatch_semaphore_t semaphore = dispatch_semaphore_create(0);
    NSData *plainData = [[NSString stringWithFormat:@"%@:%@",pauthkey,psecrt] dataUsingEncoding:NSUTF8StringEncoding];
    NSString *encodedUsernameAndPassword = [plainData base64EncodedStringWithOptions:0];
    
    
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.completionQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
     NSString *request =[NSString stringWithFormat:@"%@",purl];
    NSLog(@"%@", request);
    NSLog(@"%@", pbody);
    if(pparam == NULL)
        pparam = [[NSMutableDictionary alloc]init];
    
    NSMutableURLRequest *req = [[AFJSONRequestSerializer serializer] requestWithMethod:@"POST" URLString:request parameters:pparam error:nil];
    NSMutableArray *granttype=[[NSMutableArray alloc]init];
    [granttype addObject:@"client_credentials"];
    NSDictionary *dict = @{@"grant_type": granttype};
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict options:NSJSONWritingPrettyPrinted error:&error];
    req.timeoutInterval= [[[NSUserDefaults standardUserDefaults] valueForKey:@"timeoutInterval"] longValue];
    [req setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [req setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [req addValue:[NSString stringWithFormat:@"Basic %@", encodedUsernameAndPassword] forHTTPHeaderField:@"Authorization"];
    [req setHTTPBody:jsonData];
    
    NSLog(@"%@", encodedUsernameAndPassword);
    [[manager dataTaskWithRequest:req uploadProgress:nil downloadProgress:nil completionHandler:^(NSURLResponse * _Nonnull response, NSData* _Nullable responseObject, NSError * _Nullable error) {
        
        if (!error) {
            retdata = responseObject;
            dispatch_semaphore_signal(semaphore);
            
        } else {
            retdata = (NSData *)error.userInfo[AFNetworkingOperationFailingURLResponseDataErrorKey];
            dispatch_semaphore_signal(semaphore);
        }
    }]resume];
    
    
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
    
    
    return retdata;
}
+ (NSData *)urlGetRequest:(NSString *)purl token:(NSString*)ptoken param:(NSMutableDictionary*)pparam {
   // NSURL *baseURL = [NSURL URLWithString:[MZUtils pathsetting]];
    NSLog(@"%@", purl);
    
    __block NSData *retdata = NULL;
    
    dispatch_semaphore_t semaphore = dispatch_semaphore_create(0);
    //NSData *plainData = [[NSString stringWithFormat:@"%@:%@", [MZCustomerCouponConfig AccessToken],[MZCustomerCouponConfig AccessKey]] dataUsingEncoding:NSUTF8StringEncoding];
   // NSString *encodedUsernameAndPassword = [plainData base64EncodedStringWithOptions:0];
    
    
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.completionQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
     NSString *request =[NSString stringWithFormat:@"%@",purl];
    if(pparam == NULL)
        pparam = [[NSMutableDictionary alloc]init];
    
    NSMutableURLRequest *req = [[AFJSONRequestSerializer serializer] requestWithMethod:@"GET" URLString:request parameters:pparam error:nil];
    
    req.timeoutInterval= [[[NSUserDefaults standardUserDefaults] valueForKey:@"timeoutInterval"] longValue];
    [req setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [req setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [req addValue:[NSString stringWithFormat:@"Bearer %@",ptoken] forHTTPHeaderField:@"Authorization"];
    
    [[manager dataTaskWithRequest:req uploadProgress:nil downloadProgress:nil completionHandler:^(NSURLResponse * _Nonnull response, NSData* _Nullable responseObject, NSError * _Nullable error) {
        
        if (!error) {
            retdata = responseObject;
            dispatch_semaphore_signal(semaphore);
            
        } else {
            retdata = (NSData *)error.userInfo[AFNetworkingOperationFailingURLResponseDataErrorKey];
            dispatch_semaphore_signal(semaphore);
        }
    }]resume];
    
    
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
    
    
    return retdata;
}


+ (NSData *)urlPostRequest:(NSString *)purl token:(NSString*)ptoken body:(NSData*)pbody parameters:(NSMutableDictionary*)pparam {
    
   // NSURL *baseURL = [NSURL URLWithString:[MZUtils pathsetting]];
    NSLog(@"%@", purl);
    NSLog(@"%@", ptoken);
    __block NSData *retdata = NULL;
    
    dispatch_semaphore_t semaphore = dispatch_semaphore_create(0);
//    NSData *plainData = [[NSString stringWithFormat:@"%@:%@", [MZCustomerCouponConfig AccessToken],[MZCustomerCouponConfig AccessKey]] dataUsingEncoding:NSUTF8StringEncoding];
//    NSString *encodedUsernameAndPassword = [plainData base64EncodedStringWithOptions:0];
    
    
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.completionQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
     NSString *request =[NSString stringWithFormat:@"%@",purl];
    
    if(pparam == NULL)
        pparam = [[NSMutableDictionary alloc]init];
    
    NSMutableURLRequest *req = [[AFJSONRequestSerializer serializer] requestWithMethod:@"POST" URLString:request parameters:pparam error:nil];
    
    req.timeoutInterval= [[[NSUserDefaults standardUserDefaults] valueForKey:@"timeoutInterval"] longValue];
    [req setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [req setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [req addValue:[NSString stringWithFormat:@"Bearer %@",ptoken] forHTTPHeaderField:@"Authorization"];
    [req setHTTPBody:pbody];
    
    [[manager dataTaskWithRequest:req uploadProgress:nil downloadProgress:nil completionHandler:^(NSURLResponse * _Nonnull response, NSData* _Nullable responseObject, NSError * _Nullable error) {
        
        if (!error) {
            retdata = responseObject;
            dispatch_semaphore_signal(semaphore);
        } else {
            retdata = (NSData *)error.userInfo[AFNetworkingOperationFailingURLResponseDataErrorKey];
            dispatch_semaphore_signal(semaphore);
        }
    }]resume];
    
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
    return retdata;
}
+ (NSData *)urlPutRequest:(NSString *)purl token:(NSString*)ptoken body:(NSData*)pbody parameters:(NSMutableDictionary*)pparam{
    
    //NSURL *baseURL = [NSURL URLWithString:[MZUtils pathsetting]];
    NSLog(@"%@", purl);
    
    __block NSData *retdata = NULL;
    
    dispatch_semaphore_t semaphore = dispatch_semaphore_create(0);
    //NSData *plainData = [[NSString stringWithFormat:@"%@:%@", [MZCustomerCouponConfig AccessToken],[MZCustomerCouponConfig AccessKey]] dataUsingEncoding:NSUTF8StringEncoding];
    //NSString *encodedUsernameAndPassword = [plainData base64EncodedStringWithOptions:0];
    
    
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.completionQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
     NSString *request =[NSString stringWithFormat:@"%@",purl];
    
    if(pparam == NULL)
        pparam = [[NSMutableDictionary alloc]init];
    
    NSMutableURLRequest *req = [[AFJSONRequestSerializer serializer] requestWithMethod:@"PUT" URLString:request parameters:pparam error:nil];
    
    req.timeoutInterval= [[[NSUserDefaults standardUserDefaults] valueForKey:@"timeoutInterval"] longValue];
    [req setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [req setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [req addValue:[NSString stringWithFormat:@"Bearer %@",ptoken] forHTTPHeaderField:@"Authorization"];
    [req setHTTPBody:pbody];
    
    [[manager dataTaskWithRequest:req uploadProgress:nil downloadProgress:nil completionHandler:^(NSURLResponse * _Nonnull response, NSData* _Nullable responseObject, NSError * _Nullable error) {
        
        if (!error) {
            retdata = responseObject;
            dispatch_semaphore_signal(semaphore);
            
        } else {
            retdata = (NSData *)error.userInfo[AFNetworkingOperationFailingURLResponseDataErrorKey];
            
            dispatch_semaphore_signal(semaphore);
        }
    }]resume];
    
    
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
    
    
    return retdata;
}


+ (NSString *)NetworkConnection {
    
    NSString *retval = NULL;
  //  Reachability *reachability = [Reachability //reachabilityForInternetConnection];
   // NetworkStatus status = [reachability currentReachabilityStatus];
    //if(status == NotReachable) {
  //      retval = @"No Internet"; //No internet
 //   }
 //   else if (status == ReachableViaWiFi) {
  //      retval = @"WiFi";  //WiFi
  //  }
//else if (status == ReachableViaWWAN) {
  //      retval = @"3G";    //3G
        
    //}
    return retval;
}
//Platform API For Country List
+ (NSData *)urlRegGetRequest:(NSString *)purl param:(NSMutableDictionary*)pparam {
    NSURL *baseURL ;
    
    
    __block NSData *retdata = NULL;
    
    dispatch_semaphore_t semaphore = dispatch_semaphore_create(0);
    NSData *plainData = [[NSString stringWithFormat:@"%@:%@", @"By3I7fX",@"x"] dataUsingEncoding:NSUTF8StringEncoding];
    NSString *encodedUsernameAndPassword = [plainData base64EncodedStringWithOptions:0];
    
    
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.completionQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    NSString *request =[NSString stringWithFormat:@"%@%@",baseURL,purl];
    if(pparam == NULL)
        pparam = [[NSMutableDictionary alloc]init];
    
    NSMutableURLRequest *req = [[AFJSONRequestSerializer serializer] requestWithMethod:@"GET" URLString:request parameters:pparam error:nil];
    
    req.timeoutInterval= [[[NSUserDefaults standardUserDefaults] valueForKey:@"timeoutInterval"] longValue];
    [req setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [req setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [req addValue:[NSString stringWithFormat:@"Basic %@", encodedUsernameAndPassword] forHTTPHeaderField:@"Authorization"];
    
    [[manager dataTaskWithRequest:req uploadProgress:nil downloadProgress:nil completionHandler:^(NSURLResponse * _Nonnull response, NSData* _Nullable responseObject, NSError * _Nullable error) {
        
        if (!error) {
            retdata = responseObject;
            dispatch_semaphore_signal(semaphore);
            
        } else {
            retdata = (NSData *)error.userInfo[AFNetworkingOperationFailingURLResponseDataErrorKey];
            dispatch_semaphore_signal(semaphore);
        }
    }]resume];
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
    return retdata;
}


@end
