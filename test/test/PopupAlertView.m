//
//  DbsAlertView.m
//  test
//
//  Created by yu xia on 15/7/17.
//  Copyright © 2017 yu xia. All rights reserved.
//

#import "PopupAlertView.h"

@implementation PopupAlertView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
 
*/

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self customInit];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame 
{
    self = [super initWithFrame:frame];
    if (self) {
         [self customInit];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title message:(NSAttributedString *)message
{
    self = [super initWithFrame:frame];
    if (self) {
        [self customInit];
        self.titleLabel.text = title;
        self.contentLabel.attributedText = message;
    }
    return self;
}

-(void)customInit{
    [[NSBundle mainBundle] loadNibNamed:@"PopupAlertView" owner:self options:nil];
    [self addSubview:self.contentView];
    self.contentView.frame = self.bounds;
    self.yesButton.layer.cornerRadius = 10;
    self.yesButton.layer.borderWidth = 1.0f;
    self.yesButton.layer.borderColor = [UIColor grayColor].CGColor;
    self.noButton.layer.cornerRadius = 10;
    self.noButton.layer.borderWidth = 1.0f;
    self.noButton.layer.borderColor = [UIColor grayColor].CGColor;
    
    
    
}

- (IBAction)noPress:(id)sender {
    [self removeFromSuperview];
    if(self.popupAlertDelegate != nil && [self.popupAlertDelegate respondsToSelector:@selector(pressedCallBack:)]) {
        [self.popupAlertDelegate pressedCallBack:1];
    }
}

- (IBAction)yesPress:(id)sender {
    [self removeFromSuperview];
    if(self.popupAlertDelegate != nil && [self.popupAlertDelegate respondsToSelector:@selector(pressedCallBack:)]) {
        [self.popupAlertDelegate pressedCallBack:2];
    }
}


@end
