JBLayoutConstraintTool(UIView+Constraint)
===================================

Overview
----------------------------------
UIView+Constraint，提供一个工具类，封装了对原生NSLayoutConstraint约束的修改API。使修改约束更加方便快捷。

Usage
----------------------------------

``` objc
#import "UIView+Constraint.h"


/**
*  init and layout subview
*/
- (UIView *)lineView{
if(!_lineView){
    _lineView = [[UIView alloc] init];
    [self.view addSubview:_lineView];

    [_lineView setTranslatesAutoresizingMaskIntoConstraints:NO];
    NSLayoutConstraint *originYConstraint = [NSLayoutConstraint constraintWithItem:_lineView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:100];
    NSLayoutConstraint *originXConstraint = [NSLayoutConstraint constraintWithItem:_lineView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:200];
    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:_lineView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:10];
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:_lineView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:200];
    heightConstraint.identifier = @"bounds_height";

    NSArray *arr = [NSArray arrayWithObjects:originYConstraint, originXConstraint, widthConstraint, heightConstraint, nil];
    [self.view addConstraints:arr];
    }

    return _lineView;
}


/**
*  update constraints
*/
- (void)updateConstraint{

    //根据identifier更新高度约束
    [self.view updateConstraintWithIdentifier:@"bounds_height" constant:100 successBlock:^{
    NSLog(@"success");
    } failureBlock:^{
    NSLog(@"failure");
    }];

    //更新view的top约束
    [self.lineView updateTopConstraint:300 secondItem:self.view secondAttribute:NSLayoutAttributeTop topView:self.view successBlock:^{
    NSLog(@"success");
    } failurdBlock:^{
    NSLog(@"failure");
    }];

    //更新view的left约束
    [self.lineView updateLeftConstraint:300 secondItem:self.view secondAttribute:NSLayoutAttributeLeft topView:self.view successBlock:^{
    NSLog(@"success");
    } failurdBlock:^{
    NSLog(@"failure");
    }];

    //更新view的宽度约束
    [self.lineView updateWidthConstraint:50 topView:self.view successBlock:^{
    NSLog(@"success");
    } failurdBlock:^{
    NSLog(@"failure");
    }];

    //更新view的高度约束
    [self.lineView updateHeightConstraint:50 topView:self.view successBlock:^{
    NSLog(@"success");
    } failurdBlock:^{
    NSLog(@"failure");
    }];

    //更新view的size约束
    [self.lineView updateSizeConstraint:CGSizeMake(50, 50) topView:self.view successBlock:^{
    NSLog(@"success");
    } failurdBlock:^{
    NSLog(@"failure");
    }];

    //更新view的Center_X
    [self.lineView updateCenterXConstraint:40 topView:self.view successBlock:^{
    NSLog(@"success");
    } failurdBlock:^{
    NSLog(@"failure");
    }];

    //更新view的Center_Y
    [self.lineView updateCenterYConstraint:40 topView:self.view successBlock:^{
    NSLog(@"success");
    } failurdBlock:^{
    NSLog(@"failure");
    }];

    //更新view的Center
    [self.lineView updateCenterConstraint:CGPointMake(40, 40) topView:self.view successBlock:^{
    NSLog(@"success");
    } failurdBlock:^{
    NSLog(@"failure");
    }];

}

```