//
//  RegisterViewController.m
//  testpos
//
//

#import "RegisterViewController.h"
#import <MZCustomerCouponLib/MZCustomerCouponLib.h>
#import "Common.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

@synthesize txt_customerName,txt_customerEmail,txt_customerMobile,txt_customerPassword;
- (void)viewDidLoad {
    [super viewDidLoad];
    txt_customerName.delegate = self;
    txt_customerEmail.delegate = self;
    txt_customerMobile.delegate = self;
    txt_customerPassword.delegate = self;
    [self.view endEditing:YES];

}
- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [txt_customerPassword resignFirstResponder];
    txt_customerName.text = @"";
    txt_customerEmail.text = @"";
    txt_customerMobile.text = @"";
    txt_customerPassword.text = @"";
}


- (IBAction)btn_Submit:(id)sender {
    [self.view endEditing:YES];
    if ([txt_customerEmail.text isEqualToString:@""] || [txt_customerPassword.text isEqualToString:@""] || [txt_customerName.text isEqualToString:@""] ||[txt_customerMobile.text isEqualToString:@""]){
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
        [objcust setCustomer_email:txt_customerEmail.text];
        [objcust setCustomer_password:txt_customerPassword.text];
        [objcust setCustomer_first_name:txt_customerName.text];
        [objcust setCustomer_mobile:txt_customerMobile.text];
        [objcust setUser_type:@"C"];
    
        CustomerDataModel *objdata=[[CustomerDataModel alloc]init];
        [objdata setCustomer:objcust];
        MZLoginResponse *retval1= [[MZLoginResponse alloc]init];
    MZCustomerLogin *objMzcustomer=[[MZCustomerLogin alloc]init];
        retval1=[objMzcustomer CustomerSignup:objdata token:[Common Accesstoken]];
        NSLog(@"%@",retval1);
    
    if (retval1 != NULL) {
        if (retval1.customer != NULL) {
            UIAlertController *alertController1 = [UIAlertController
                                                   alertControllerWithTitle:@"Result"
                                                   message:[NSString stringWithFormat:@"%@",retval1]
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
           
        }else if (retval1.developerMessage != NULL){
            UIAlertController *alertController2 = [UIAlertController
                                                   alertControllerWithTitle:@""
                                                   message:retval1.developerMessage
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
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [txt_customerPassword resignFirstResponder];
    [txt_customerMobile resignFirstResponder];
    return YES;
}

@end
