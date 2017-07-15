//
//  MyAlertView.m
//  test
//
//  Created by yu xia on 14/7/17.
//  Copyright © 2017 yu xia. All rights reserved.
//

#import "MyAlertView.h"

@implementation MyAlertView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.5];
    }
    return self;
}
- (void)duplicateAllTheFunctionsOfUIAlertViewHere {
    //re-implement all the functionality in your custom ways
}

- (void)show
{
    UIView* superview = [UIApplication sharedApplication].keyWindow;
    self.frame = superview.bounds;
    [superview addSubview:self];
    // Do an animation if you want to get fancy
}


@end
