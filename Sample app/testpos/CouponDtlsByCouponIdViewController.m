//
//  CouponDtlsByCouponIdViewController.m
//  testpos
//
//  
//

#import "CouponDtlsByCouponIdViewController.h"
#import <MZCustomerCouponLib/MZCustomerCouponLib.h>
#import "Common.h"

@interface CouponDtlsByCouponIdViewController ()

@end

@implementation CouponDtlsByCouponIdViewController
@synthesize txt_couponId;
- (void)viewDidLoad {
    [super viewDidLoad];
    txt_couponId.delegate = self;
    
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [txt_couponId resignFirstResponder];
    txt_couponId.text = @"";
   
}
- (IBAction)btn_submit:(id)sender {
    [self.view endEditing:YES];
    if ([txt_couponId.text isEqualToString:@""]){
        UIAlertController *alertController4 = [UIAlertController
                                               alertControllerWithTitle:@""
                                               message:@"Please Check Empty Field"
                                               preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okAction = [UIAlertAction
                                   actionWithTitle:@"OK"
                                   style:UIAlertActionStyleDefault
                                   handler:^(UIAlertAction *action)
                                   { [self dismissViewControllerAnimated:YES completion:nil];}];
       
        
        [alertController4 addAction:okAction];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self presentViewController:alertController4 animated:YES completion:nil];
        });
    }else {
        MZCoupon * objcoupon1=[[MZCoupon alloc]init];
        MZCouponDetailsResponse *retvalcoupon1 = [[MZCouponDetailsResponse alloc]init];
        retvalcoupon1 = [objcoupon1 getCouponDetailsByCoupoId:txt_couponId.text token:[Common Accesstoken]];
        NSLog(@"%@",retvalcoupon1);
    if (retvalcoupon1 != NULL) {
        if (retvalcoupon1.coupon != NULL) {
            UIAlertController *alertController1 = [UIAlertController
                                                   alertControllerWithTitle:@"Result"
                                                   message:[NSString stringWithFormat:@"%@",retvalcoupon1]
                                                   preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *okAction = [UIAlertAction
                                       actionWithTitle:@"OK"
                                       style:UIAlertActionStyleDefault
                                       handler:^(UIAlertAction *action)
                                       { [self.navigationController popViewControllerAnimated:YES];}];
           
            
            [alertController1 addAction:okAction];
            dispatch_async(dispatch_get_main_queue(), ^{
                [self presentViewController:alertController1 animated:YES completion:nil];
            });
           
        }else if (retvalcoupon1.developerMessage != NULL){
            UIAlertController *alertController2 = [UIAlertController
                                                   alertControllerWithTitle:@""
                                                   message:retvalcoupon1.developerMessage
                                                   preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *okAction = [UIAlertAction
                                       actionWithTitle:@"OK"
                                       style:UIAlertActionStyleDefault
                                       handler:^(UIAlertAction *action)
                                       { [self.navigationController popViewControllerAnimated:YES];}];
           
            
            [alertController2 addAction:okAction];
            dispatch_async(dispatch_get_main_queue(), ^{
                [self presentViewController:alertController2 animated:YES completion:nil];
            });
        }else {
        UIAlertController *alertController3 = [UIAlertController
                                               alertControllerWithTitle:@"Failed"
                                               message:@"Please Get Access Token"
                                               preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okAction = [UIAlertAction
                                   actionWithTitle:@"OK"
                                   style:UIAlertActionStyleDefault
                                   handler:^(UIAlertAction *action)
                                   { [self.navigationController popViewControllerAnimated:YES];}];


        [alertController3 addAction:okAction];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self presentViewController:alertController3 animated:YES completion:nil];
        });
    }
    }
}
}
@end
