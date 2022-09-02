//
//  OtpViewController.m
//  testpos
//
//

#import "OtpViewController.h"
#import <MZCustomerCouponLib/MZCustomerCouponLib.h>
#import "Common.h"

@interface OtpViewController ()

@end

@implementation OtpViewController
@synthesize txt_otp,txt_newpassword,txt_customerid;
- (void)viewDidLoad {
    [super viewDidLoad];
    txt_otp.delegate = self;
    txt_newpassword.delegate = self;
    txt_customerid.delegate = self;
}
- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [txt_newpassword resignFirstResponder];
    txt_otp.text = @"";
    txt_newpassword.text = @"";
    txt_customerid.text = @"";
}

- (IBAction)btn_submit:(id)sender {
    [self.view endEditing:YES];
    if ([txt_customerid.text isEqualToString:@""] || [txt_otp.text isEqualToString:@""] || [txt_newpassword.text isEqualToString:@""]){
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
    CustomerDataModel *objdata1=[[CustomerDataModel alloc]init];
       [objdata1 setNew_password:txt_newpassword.text];
       MZLoginResponse *retval3= [[MZLoginResponse alloc]init];
    MZCustomerLogin *objMzcustomer=[[MZCustomerLogin alloc]init];
       retval3=[objMzcustomer OtpPasswordForgot:txt_customerid.text otp:txt_otp.text CustomerData:objdata1 token:[Common Accesstoken]];
       NSLog(@"%@",retval3);
    if (retval3 != NULL) {
        if (retval3.customer_id != NULL) {
            UIAlertController *alertController1 = [UIAlertController
                                                   alertControllerWithTitle:@"Result"
                                                   message:[ NSString stringWithFormat:@"%@",retval3]
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
           
        }else if (retval3.developerMessage != NULL){
            UIAlertController *alertController2 = [UIAlertController
                                                   alertControllerWithTitle:@""
                                                   message:retval3.developerMessage
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
