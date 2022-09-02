//
//  OtpViewController.h
//  testpos
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OtpViewController : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txt_otp;
@property (weak, nonatomic) IBOutlet UITextField *txt_newpassword;
@property (weak, nonatomic) IBOutlet UITextField *txt_customerid;
- (IBAction)btn_submit:(id)sender;

@end

NS_ASSUME_NONNULL_END
