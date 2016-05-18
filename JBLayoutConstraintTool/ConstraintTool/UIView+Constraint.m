//
//  UIView+Constraint.m
//  NSLayoutConstraint_Extent
//
//  Created by jaybin on 16/5/12.
//  Copyright © 2016年 jaybin. All rights reserved.
//

#import "UIView+Constraint.h"

@implementation UIView (Constraint)

/**
 *  通过identifier更新约束
 */
- (void)updateConstraintValueWithIdentifier:(NSString *)identifier constant:(CGFloat)constant successBlock:(void (^)(void))success failureBlock:(void (^)(void))failure{
    NSArray *constraintsArray = self.constraints;
    for (NSLayoutConstraint *constraint in constraintsArray) {
        if([identifier isEqualToString:constraint.identifier]){
            constraint.constant = constant;
            success();
            return;
        }
    }
    failure();
}

/**
 *  直接更新view的宽度约束
 */
- (void)updateWidthConstraint:(CGFloat)width topView:(UIView *)topView successBlock:(void (^)(void))success failurdBlock:(void (^)(void))failure{
    NSArray *constraintsArray = topView.constraints;
    for (NSLayoutConstraint *constraint in constraintsArray) {
        if(self==constraint.firstItem &&
           nil==constraint.secondItem &&
           NSLayoutAttributeWidth==constraint.firstAttribute &&
           NSLayoutAttributeNotAnAttribute==constraint.secondAttribute){
            constraint.constant = width;
            success();
            return;
        }
    }
    failure();
}

/**
 *  直接更新view的高度约束
 */
- (void)updateHeightConstraint:(CGFloat)height topView:(UIView *)topView successBlock:(void (^)(void))success failurdBlock:(void (^)(void))failure{
    NSArray *constraintsArray = topView.constraints;
    for (NSLayoutConstraint *constraint in constraintsArray) {
        if(self==constraint.firstItem &&
           nil==constraint.secondItem &&
           NSLayoutAttributeHeight==constraint.firstAttribute &&
           NSLayoutAttributeNotAnAttribute==constraint.secondAttribute){
            constraint.constant = height;
            success();
            return;
        }
    }
    failure();
}

/**
 *  直接更新view的size约束
 */
- (void)updateSizeConstraint:(CGSize)size topView:(UIView *)topView successBlock:(void (^)(void))success failurdBlock:(void (^)(void))failure{
    [self updateWidthConstraint:size.width topView:topView successBlock:^{
        [self updateHeightConstraint:size.height topView:topView successBlock:success failurdBlock:failure];
    }failurdBlock:failure];
}

/**
 *  直接更新view的Center_X
 */
- (void)updateCenterXConstraint:(CGFloat)centerX topView:(UIView *)topView successBlock:(void (^)(void))success failurdBlock:(void (^)(void))failure{
    NSArray *constraintsArray = topView.constraints;
    for (NSLayoutConstraint *constraint in constraintsArray) {
        if(self==constraint.firstItem &&
           NSLayoutAttributeCenterX==constraint.firstAttribute &&
           topView==constraint.secondItem &&
           NSLayoutAttributeCenterX==constraint.secondAttribute){
            constraint.constant = centerX;
            success();
            return;
        }
    }
    failure();
}

/**
 *  直接更新view的Center_Y
 */
- (void)updateCenterYConstraint:(CGFloat)centerY topView:(UIView *)topView successBlock:(void (^)(void))success failurdBlock:(void (^)(void))failure{
    NSArray *constraintsArray = topView.constraints;
    for (NSLayoutConstraint *constraint in constraintsArray) {
        if(self==constraint.firstItem &&
           NSLayoutAttributeCenterY==constraint.firstAttribute &&
           topView==constraint.secondItem &&
           NSLayoutAttributeCenterY==constraint.secondAttribute){
            constraint.constant = centerY;
            success();
            return;
        }
    }
    failure();
}

/**
 *  直接更新view的Center
 */
- (void)updateCenterConstraint:(CGPoint)center topView:(UIView *)topView successBlock:(void (^)(void))success failurdBlock:(void (^)(void))failure{
    [self updateCenterXConstraint:center.x topView:topView successBlock:^{
        [self updateCenterYConstraint:center.y topView:topView successBlock:success failurdBlock:failure];
    } failurdBlock:failure];
}

/**
 *  更新view的top约束
 */
-(void)updateTopConstraint:(CGFloat)top secondItem:(UIView *)secondItem secondAttribute:(NSLayoutAttribute)secondAttribute topView:(UIView *)topView successBlock:(void (^)(void))success failurdBlock:(void (^)(void))failure{
    NSArray *constraintsArray = topView.constraints;
    for (NSLayoutConstraint *constraint in constraintsArray) {
        if(self==constraint.firstItem &&
           NSLayoutAttributeTop==constraint.firstAttribute &&
           secondItem==constraint.secondItem &&
           secondAttribute==constraint.secondAttribute){
            constraint.constant = top;
            success();
            return;
        }
    }
    failure();
}

/**
 *  更新view的bottom约束
 */
-(void)updateBottomConstraint:(CGFloat)bottom secondItem:(UIView *)secondItem secondAttribute:(NSLayoutAttribute)secondAttribute topView:(UIView *)topView successBlock:(void (^)(void))success failurdBlock:(void (^)(void))failure{
    NSArray *constraintsArray = topView.constraints;
    for (NSLayoutConstraint *constraint in constraintsArray) {
        if(self==constraint.firstItem &&
           NSLayoutAttributeBottom==constraint.firstAttribute &&
           secondItem==constraint.secondItem &&
           secondAttribute==constraint.secondAttribute){
            constraint.constant = bottom;
            success();
            return;
        }
    }
    failure();
}

/**
 *  更新view的left约束
 */
-(void)updateLeftConstraint:(CGFloat)left secondItem:(UIView *)secondItem secondAttribute:(NSLayoutAttribute)secondAttribute topView:(UIView *)topView successBlock:(void (^)(void))success failurdBlock:(void (^)(void))failure{
    NSArray *constraintsArray = topView.constraints;
    for (NSLayoutConstraint *constraint in constraintsArray) {
        if(self==constraint.firstItem &&
           NSLayoutAttributeLeft==constraint.firstAttribute &&
           secondItem==constraint.secondItem &&
           secondAttribute==constraint.secondAttribute){
            constraint.constant = left;
            success();
            return;
        }
    }
    failure();
}

/**
 *  更新view的right约束
 */
-(void)updateRightConstraint:(CGFloat)right secondItem:(UIView *)secondItem secondAttribute:(NSLayoutAttribute)secondAttribute topView:(UIView *)topView successBlock:(void (^)(void))success failurdBlock:(void (^)(void))failure{
    NSArray *constraintsArray = topView.constraints;
    for (NSLayoutConstraint *constraint in constraintsArray) {
        if(self==constraint.firstItem &&
           NSLayoutAttributeRight==constraint.firstAttribute &&
           secondItem==constraint.secondItem &&
           secondAttribute==constraint.secondAttribute){
            constraint.constant = right;
            success();
            return;
        }
    }
    failure();
}

@end
