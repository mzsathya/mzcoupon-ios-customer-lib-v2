//
//  ChangePasswordViewController.m
//  testpos
//
//

#import "ChangePasswordViewController.h"
#import <MZCustomerCouponLib/MZCustomerCouponLib.h>
#import "Common.h"

@interface ChangePasswordViewController ()

@end

@implementation ChangePasswordViewController
@synthesize txt_newpasswd,txt_oldpassword,txt_customerId;
- (void)viewDidLoad {
    [super viewDidLoad];
    txt_newpasswd.delegate = self;
    txt_oldpassword.delegate = self;
    txt_customerId.delegate = self;
}
- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [txt_customerId resignFirstResponder];
    txt_newpasswd.text = @"";
    txt_oldpassword.text = @"";
    txt_customerId.text = @"";
}
- (IBAction)btn_submit:(id)sender {
    [self.view endEditing:YES];
    if ([txt_newpasswd.text isEqualToString:@""] || [txt_oldpassword.text isEqualToString:@""] || [txt_customerId.text isEqualToString:@""]){
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
        CustomerDataModel *objdata2=[[CustomerDataModel alloc]init];
        [objdata2 setOld_password:txt_oldpassword.text];
        [objdata2 setNew_password:txt_newpasswd.text];
        MZLoginResponse *retval4= [[MZLoginResponse alloc]init];
    MZCustomerLogin *objMzcustomer=[[MZCustomerLogin alloc]init];
        retval4=[objMzcustomer PasswordChange:txt_customerId.text CustomerData:objdata2 token:[Common Accesstoken]];
        NSLog(@"%@",retval4);
    if (retval4 != NULL) {
        if (retval4.customer_id != NULL) {
            UIAlertController *alertController1 = [UIAlertController
                                                   alertControllerWithTitle:@"Result"
                                                   message:[NSString stringWithFormat:@"%@",retval4]
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
           
        }else if (retval4.developerMessage != NULL){
            UIAlertController *alertController2 = [UIAlertController
                                                   alertControllerWithTitle:@""
                                                   message:retval4.developerMessage
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
    [txt_newpasswd resignFirstResponder];
    [txt_oldpassword resignFirstResponder];
    [txt_customerId resignFirstResponder];
    return YES;
}
@end
