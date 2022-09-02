//
//  ChangePasswordViewController.h
//  testpos
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChangePasswordViewController : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txt_oldpassword;
@property (weak, nonatomic) IBOutlet UITextField *txt_newpasswd;
- (IBAction)btn_submit:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *txt_customerId;

@end

NS_ASSUME_NONNULL_END
