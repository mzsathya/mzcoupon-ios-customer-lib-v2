//
//  ExpiryCouponRedeemViewController.h
//  testpos
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ExpiryCouponRedeemViewController : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *txt_couponSerial;
@property (weak, nonatomic) IBOutlet UITextField *txt_suoervisorpin;
@property (weak, nonatomic) IBOutlet UITextField *txt_outletId;
- (IBAction)btn_submit:(id)sender;
@end

NS_ASSUME_NONNULL_END
