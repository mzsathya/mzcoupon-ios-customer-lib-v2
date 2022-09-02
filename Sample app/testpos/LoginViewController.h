//
//  LoginViewController.h
//  testpos
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginViewController : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txt_username;
@property (weak, nonatomic) IBOutlet UITextField *txt_Password;
- (IBAction)btn_submit:(id)sender;

@end

NS_ASSUME_NONNULL_END
