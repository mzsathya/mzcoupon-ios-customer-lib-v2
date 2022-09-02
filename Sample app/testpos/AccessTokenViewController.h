//
//  AccessTokenViewController.h
//  testpos
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AccessTokenViewController : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txt_merchOauth;
@property (weak, nonatomic) IBOutlet UITextField *txt_secrt;
- (IBAction)btn_submit:(id)sender;

@end

NS_ASSUME_NONNULL_END
