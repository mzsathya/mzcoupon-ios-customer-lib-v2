//
//  SerialListByCustomerIdCouponIdViewController.m
//  testpos
//
//

#import "SerialListByCustomerIdCouponIdViewController.h"
#import <MZCustomerCouponLib/MZCustomerCouponLib.h>
#import "Common.h"
@interface SerialListByCustomerIdCouponIdViewController ()

@end

@implementation SerialListByCustomerIdCouponIdViewController
@synthesize txt_cudtomerid,txt_couponId;
- (void)viewDidLoad {
    [super viewDidLoad];
    txt_couponId.delegate = self;
    txt_cudtomerid.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [txt_couponId resignFirstResponder];
    txt_cudtomerid.text = @"";
    txt_couponId.text = @"";
}

- (IBAction)btn_submit:(id)sender {
    [self.view endEditing:YES];
    if ([txt_couponId.text isEqualToString:@""] || [txt_cudtomerid.text isEqualToString:@""] ){
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
        MZCouponSerial* couponserial6=[[MZCouponSerial alloc]init];
        MZCouponSerialResponse *retvalserial3 = [[MZCouponSerialResponse alloc]init];
        retvalserial3 = [couponserial6 getCouponSerialsByCouponId:txt_cudtomerid.text couponId:txt_couponId.text skip:@"0" limit:@"20" token:[Common Accesstoken]];
        NSLog(@"%@",retvalserial3);
    if (retvalserial3 != NULL) {
        if (retvalserial3.results != NULL) {
            UIAlertController *alertController1 = [UIAlertController
                                                   alertControllerWithTitle:@"Result"
                                                   message:[NSString stringWithFormat:@"%@",retvalserial3]
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
           
        }else  if (retvalserial3.developerMessage != NULL){
            UIAlertController *alertController2 = [UIAlertController
                                                   alertControllerWithTitle:@""
                                                   message:retvalserial3.developerMessage
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
