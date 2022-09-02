//
//  MerchantOauthViewController.m
//  testpos
//
//

#import "MerchantOauthViewController.h"
#import <MZCustomerCouponLib/MZCustomerCouponLib.h>

@interface MerchantOauthViewController ()

@end

@implementation MerchantOauthViewController
@synthesize txt_secrt,txt_oauthkey,txt_merchantId;

- (void)viewDidLoad {
    [super viewDidLoad];
    txt_secrt.delegate = self;
    txt_oauthkey.delegate = self;
    txt_merchantId.delegate = self;
    
}
- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [txt_secrt resignFirstResponder];
    txt_oauthkey.text = @"";
    txt_merchantId.text = @"";
    txt_secrt.text = @"";
}

- (IBAction)btn_submit:(id)sender {
    [self.view endEditing:YES];
    if ([txt_secrt.text isEqualToString:@""] || [txt_oauthkey.text isEqualToString:@""] || [txt_merchantId.text isEqualToString:@""]){
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
    NSString *merchid = txt_merchantId.text;
    NSString *Oauthkey = txt_oauthkey.text;
    NSString *secret = txt_secrt.text;
        MZMerchant *objmerchant=[[MZMerchant alloc]init];
        MZMerchantOAuthResponse *merchantres=[[MZMerchantOAuthResponse alloc]init];
        merchantres=[objmerchant GetMerchantOAuth:merchid Oauth:Oauthkey secrt:secret];
        NSLog(@"%@",merchantres);
    NSString *result =[NSString stringWithFormat:@"%@",merchantres];
    if (merchantres != NULL) {
        if (merchantres.oauth_key != NULL) {
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
           
        }else  if (merchantres.developerMessage != NULL){
            UIAlertController *alertController2 = [UIAlertController
                                                   alertControllerWithTitle:@""
                                                   message:merchantres.developerMessage
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
        }
        
    }
      
}
}
@end
