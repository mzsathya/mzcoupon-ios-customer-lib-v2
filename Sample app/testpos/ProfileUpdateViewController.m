//
//  ProfileUpdateViewController.m
//  testpos
//
//

#import "ProfileUpdateViewController.h"
#import <MZCustomerCouponLib/MZCustomerCouponLib.h>
#import "Common.h"
@interface ProfileUpdateViewController ()

@end

@implementation ProfileUpdateViewController
@synthesize txt_customerId,txt_email,txt_cusMobile,txt_cusAddress,txt_cusFirstname,txt_cusLastName;
- (void)viewDidLoad {
    [super viewDidLoad];
    txt_cusMobile.delegate = self;
    txt_cusAddress.delegate = self;
    txt_cusFirstname.delegate = self;
    txt_cusLastName.delegate = self;
    txt_customerId.delegate = self;
    txt_email.delegate = self;
    
}
- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [txt_customerId resignFirstResponder];
    txt_cusMobile.text = @"";
    txt_cusAddress.text = @"";
    txt_customerId.text = @"";
    txt_cusFirstname.text = @"";
    txt_cusLastName.text = @"";
    txt_email.text = @"";
}

- (IBAction)btn_submit:(id)sender {
    [self.view endEditing:YES];
    if ([txt_email.text isEqualToString:@""] || [txt_customerId.text isEqualToString:@""] || [txt_cusAddress.text isEqualToString:@""] ||[txt_cusMobile.text isEqualToString:@""] || [txt_cusLastName.text isEqualToString:@""] || [txt_cusFirstname.text isEqualToString:@""]){
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
        CustomerData *objcust2=[[CustomerData alloc]init];
        [objcust2 setCustomer_email:txt_email.text];
        [objcust2 setCustomer_first_name:txt_cusFirstname.text];
        [objcust2 setCustomer_last_name:txt_cusLastName.text];
        [objcust2 setCustomer_mobile:txt_cusMobile.text];
        [objcust2 setCustomer_address:txt_cusAddress.text];
        CustomerDataModel *objdata3=[[CustomerDataModel alloc]init];
        [objdata3 setCustomer:objcust2];
        MZLoginResponse *retval5= [[MZLoginResponse alloc]init];
    MZCustomerLogin *objMzcustomer=[[MZCustomerLogin alloc]init];
        retval5=[objMzcustomer CustomerUpdate:txt_customerId.text CustomerData:objdata3 token:[Common Accesstoken ]];
    NSLog(@"%@",retval5);
    if (retval5 != NULL) {
        if (retval5.customer_id != NULL) {
            UIAlertController *alertController1 = [UIAlertController
                                                   alertControllerWithTitle:@"Result"
                                                   message:[NSString stringWithFormat:@"%@",retval5]
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
           
        }else if (retval5.developerMessage != NULL){
            UIAlertController *alertController2 = [UIAlertController
                                                   alertControllerWithTitle:@""
                                                   message:retval5.developerMessage
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
    [txt_email resignFirstResponder];
    [txt_cusMobile resignFirstResponder];
    [txt_cusAddress resignFirstResponder];
    [txt_customerId resignFirstResponder];
    [txt_cusLastName resignFirstResponder];
    return YES;
}
@end
