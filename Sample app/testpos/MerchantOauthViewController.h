//
//  MerchantOauthViewController.h
//  testpos
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MerchantOauthViewController : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txt_merchantId;
@property (weak, nonatomic) IBOutlet UITextField *txt_oauthkey;
@property (weak, nonatomic) IBOutlet UITextField *txt_secrt;
- (IBAction)btn_submit:(id)sender;

@end

NS_ASSUME_NONNULL_END
