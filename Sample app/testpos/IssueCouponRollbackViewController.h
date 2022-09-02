//
//  IssueCouponRollbackViewController.h
//  testpos
//
//  
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IssueCouponRollbackViewController : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txt_txnId;
- (IBAction)btn_submit:(id)sender;

@end

NS_ASSUME_NONNULL_END
