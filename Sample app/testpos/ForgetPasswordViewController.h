//
//  ForgetPasswordViewController.h
//  testpos
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ForgetPasswordViewController : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txt_email;
- (IBAction)btn_submit:(id)sender;

@end

NS_ASSUME_NONNULL_END
