//
//  CustomerDataModel.m
//  Mezzofy
//
//  Created by Mezzofy on 25/07/17.
//  Copyright © 2018 Mezzofy. All rights reserved.
//

#import "CustomerDataModel.h"

@implementation CustomerDataModel
@synthesize customer;
@synthesize old_password;
@synthesize new_password;

+(Class)customer_class{
    return [CustomerData class];
}
@end
