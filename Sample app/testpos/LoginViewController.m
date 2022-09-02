//
//  LoginViewController.m
//  testpos
//
//

#import "LoginViewController.h"
#import <MZCustomerCouponLib/MZCustomerCouponLib.h>
#import "Common.h"
@interface LoginViewController ()

@end

@implementation LoginViewController
@synthesize txt_Password,txt_username;
- (void)viewDidLoad {
    [super viewDidLoad];
    txt_username.delegate = self;
    txt_Password.delegate = self;

}
- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [txt_Password resignFirstResponder];
    txt_username.text = @"";
    txt_Password.text = @"";
}
- (IBAction)btn_submit:(id)sender {
    [self.view endEditing:YES];
    if ([txt_username.text isEqualToString:@""] || [txt_Password.text isEqualToString:@""] ){
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
    CustomerData *objcust=[[CustomerData alloc]init];
        [objcust setCustomer_email:txt_username.text];
        [objcust setCustomer_password:txt_Password.text];
    
        CustomerDeviceData *objdevice=[[CustomerDeviceData alloc]init];
        [objdevice setDevice_token:@""];
        [objdevice setDevice_name:@"I"];
    
        CustomerDeviceDataModel *objdevmod=[[CustomerDeviceDataModel alloc]init];
        [objdevmod setCustomer:objcust];
        [objdevmod setDevice:objdevice];
        NSLog(@"%@",[objdevmod toDictionary]);
        MZCustomerLogin *objMzcustomer1=[[MZCustomerLogin alloc]init];
        MZLoginResponse *retval;
        retval=[objMzcustomer1 LoginPlatform:objdevmod token:[Common Accesstoken]];
        NSLog(@"%@",retval);
    if (retval != NULL) {
        if (retval.customer != NULL) {
            UIAlertController *alertController1 = [UIAlertController
                                                   alertControllerWithTitle:@"Result"
                                                   message:[NSString stringWithFormat:@"%@",retval]
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
           
        }else if (retval.developerMessage != NULL){
            UIAlertController *alertController2 = [UIAlertController
                                                   alertControllerWithTitle:@""
                                                   message:retval.developerMessage
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
