//
//  MZUtils.h
//  Mezzofy
//
//  Created by Mezzofy on 07/08/14.
//  Copyright © 2018 Mezzofy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <AFNetworking/AFHTTPSessionManager.h>
#import <AFNetworking/AFURLRequestSerialization.h>
#import "MZCustomerCouponConfig.h"


@interface MZUtils : NSObject

+ (NSString*) dbpath;
+ (void) dbpath:(NSString *)path;

+ (NSString*) initialpath;
+ (void) initialpath:(NSString *)path;

+ (NSString*) pathsetting;
+ (NSString*) pathsettingforreg;


//+ (NSData *)encodegetURLdata:(NSString *)str;

+ (NSString *)makeImagePath:(NSString *)imagename;

+ (NSString *)currencyFormat:(NSNumber *)value Currency:(NSString*)pcurr;
+ (NSString *)getFormatedDate:(NSString*)str SrcFormat:(NSString*)psrcformat DstFormat:(NSString*)pdstformat;

+ (NSString *)getCurrentDate:(NSString *)fmt;
+ (NSString *)formatDate:(NSDate *)pdate Format:(NSString *)fmt;

+(NSString *)generateUUID;

+(MKCoordinateRegion) getRegionByMiles:(double)miles Location:(CLLocationCoordinate2D)newLocation;

+ (NSData *)urlGetMerchantOAuth:(NSString *)purl param:(NSMutableDictionary*)pparam;
+ (NSData *)urlGetTokenRequest:(NSString *)purl authkey:(NSString*)pauthkey authsecrt:(NSString*)psecrt body:(NSData*)pbody parameters:(NSMutableDictionary*)pparam;
+ (NSData *)urlGetRequest:(NSString *)purl token:(NSString*)ptoken param:(NSMutableDictionary*)pparam;
+ (NSData *)urlPostRequest:(NSString *)purl token:(NSString*)ptoken body:(NSData*)pbody parameters:(NSMutableDictionary*)pparam;
+ (NSData *)urlPutRequest:(NSString *)purl token:(NSString*)ptoken body:(NSData*)pbody parameters:(NSMutableDictionary*)pparam;
+ (NSString *)NetworkConnection;
+ (NSData *)urlRegGetRequest:(NSString *)purl param:(NSMutableDictionary*)pparam;
@end
