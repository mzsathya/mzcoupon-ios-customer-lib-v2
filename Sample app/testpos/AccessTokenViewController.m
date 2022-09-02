//
//  AccessTokenViewController.m
//  testpos
//
//

#import "AccessTokenViewController.h"
#import <MZCustomerCouponLib/MZCustomerCouponLib.h>
#import "Common.h"

@interface AccessTokenViewController ()

@end

@implementation AccessTokenViewController
@synthesize txt_secrt,txt_merchOauth;
- (void)viewDidLoad {
    [super viewDidLoad];
    txt_secrt.delegate = self;
    txt_merchOauth.delegate = self;
    
}
- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [txt_secrt resignFirstResponder];
    txt_merchOauth.text = @"";
    txt_secrt.text = @"";

}



- (IBAction)btn_submit:(id)sender {
    [self.view endEditing:YES];
    if ([txt_secrt.text isEqualToString:@""] || [txt_merchOauth.text isEqualToString:@""] ){
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
    AuthToken *objmezzofy=[[AuthToken alloc]init];
       MZCustomerLogin *objMzcustomer=[[MZCustomerLogin alloc]init];
       objmezzofy=[objMzcustomer loginmerchantauth:txt_merchOauth.text secrt:txt_secrt.text];
    NSLog(@"%@",objmezzofy);
    [Common Accesstoken:objmezzofy.accessToken];
    NSString *result =[NSString stringWithFormat:@"%@",objmezzofy];
if (objmezzofy != NULL) {
        UIAlertController *alertController1 = [UIAlertController
                                               alertControllerWithTitle:@"Result"
                                               message:result
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
    
}
    }
}
@end
