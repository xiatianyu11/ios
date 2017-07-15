//
//  DbsAlertView.h
//  test
//
//  Created by yu xia on 15/7/17.
//  Copyright © 2017 yu xia. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PopupAlertDelegate <NSObject>

- (void) pressedCallBack:(NSInteger) buttonIndex;

@end

@interface PopupAlertView : UIView
@property (nonatomic, weak) id<PopupAlertDelegate> popupAlertDelegate;
@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UIButton *yesButton;
@property (weak, nonatomic) IBOutlet UIButton *noButton;

- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title message:(NSAttributedString *)message;

@end
