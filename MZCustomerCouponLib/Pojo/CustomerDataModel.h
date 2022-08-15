//
//  CustomerDataModel.h
//  Mezzofy
//
//  Created by Mezzofy on 25/07/17.
//  Copyright © 2018 Mezzofy. All rights reserved.
//

#import "MZJastor.h"
#import "CustomerData.h"

@interface CustomerDataModel : MZJastor
@property (nonatomic, strong) CustomerData *customer;
@property (nonatomic, strong) NSString* old_password;
@property (strong, nonatomic) NSString *theNew_password;
@property (strong, nonatomic, getter=theNew_password) NSString *new_password;
//@property (nonatomic, strong) NSString* new_password;

@end
