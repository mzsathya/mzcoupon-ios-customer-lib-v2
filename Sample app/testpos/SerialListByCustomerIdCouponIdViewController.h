//
//  SerialListByCustomerIdCouponIdViewController.h
//  testpos
//
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SerialListByCustomerIdCouponIdViewController : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txt_cudtomerid;
@property (weak, nonatomic) IBOutlet UITextField *txt_couponId;
- (IBAction)btn_submit:(id)sender;

@end

NS_ASSUME_NONNULL_END
