//
//  VoidCouponViewController.h
//  testpos
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VoidCouponViewController : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txt_couponserial;
@property (weak, nonatomic) IBOutlet UITextField *txt_cusID;
@property (weak, nonatomic) IBOutlet UITextField *txt_remarks;
- (IBAction)btn_submit:(id)sender;

@end

NS_ASSUME_NONNULL_END
