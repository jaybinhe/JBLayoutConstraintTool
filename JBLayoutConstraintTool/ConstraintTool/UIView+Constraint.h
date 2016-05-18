//
//  UIView+Constraint.h
//  NSLayoutConstraint_Extent
//
//  Created by jaybin on 16/5/12.
//  Copyright © 2016年 jaybin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Constraint)

/**
 *
 *  通过identifier更新约束(此方法由添加约束的view调用，一般为父view)
 * 
 *  @param identifier 约束设置的标识属性
 *  @param constant   约束的常量constant值
 *  @param success    成功回调block
 *  @param failure    失败回调block
 */
- (void)updateConstraintValueWithIdentifier:(NSString *)identifier
                                   constant:(CGFloat)constant
                               successBlock:(void (^)(void))success
                               failureBlock:(void (^)(void))failure;

/**
 *
 *  直接更新view的宽度约束
 *
 *  @param width      view的宽度
 *  @param topView    添加约束的那个view，一般为父view
 *  @param success    成功回调block
 *  @param failure    失败回调block
 */
- (void)updateWidthConstraint:(CGFloat)width
                      topView:(UIView *)topView
                 successBlock:(void (^)(void))success
                 failurdBlock:(void (^)(void))failure;


/**
 *
 *  直接更新view的高度约束
 *
 *  @param height     view的高度
 *  @param topView    添加约束的那个view，一般为父view
 *  @param success    成功回调block
 *  @param failure    失败回调block
 */
- (void)updateHeightConstraint:(CGFloat)height
                       topView:(UIView *)topView
                  successBlock:(void (^)(void))success
                  failurdBlock:(void (^)(void))failure;

/**
 *
 *  直接更新view的size约束
 *
 *  @param size       view的size
 *  @param topView    添加约束的那个view，一般为父view
 *  @param success    成功回调block
 *  @param failure    失败回调block
 */
- (void)updateSizeConstraint:(CGSize)size
                     topView:(UIView *)topView
                successBlock:(void (^)(void))success
                failurdBlock:(void (^)(void))failure;

/**
 *
 *  直接更新view的Center_X
 *
 *  @param centerX    view的centerX
 *  @param topView    添加约束的那个view，一般为父view
 *  @param success    成功回调block
 *  @param failure    失败回调block
 */
- (void)updateCenterXConstraint:(CGFloat)centerX
                        topView:(UIView *)topView
                   successBlock:(void (^)(void))success
                   failurdBlock:(void (^)(void))failure;

/**
 *
 *  直接更新view的Center_Y
 *
 *  @param centerY    view的centerY
 *  @param topView    添加约束的那个view，一般为父view
 *  @param success    成功回调block
 *  @param failure    失败回调block
 */
- (void)updateCenterYConstraint:(CGFloat)centerY
                        topView:(UIView *)topView
                   successBlock:(void (^)(void))success
                   failurdBlock:(void (^)(void))failure;

/**
*
*  直接更新view的Center
*
*  @param center     view的center
*  @param topView    添加约束的那个view，一般为父view
*  @param success    成功回调block
*  @param failure    失败回调block
*/
- (void)updateCenterConstraint:(CGPoint)center
                       topView:(UIView *)topView
                  successBlock:(void (^)(void))success
                  failurdBlock:(void (^)(void))failure;

/**
 *
 *  更新view的top约束
 *
 *  @param top          view的顶部约束
 *  @param secondItem   view顶部约束的参照视图对象
 *  @param topView      添加约束的那个view，一般为父view
 *  @param success      成功回调block
 *  @param failure      失败回调block
 */
- (void)updateTopConstraint:(CGFloat)top
                 secondItem:(UIView *)secondItem
            secondAttribute:(NSLayoutAttribute)secondAttribute
                    topView:(UIView *)topView
               successBlock:(void (^)(void))success
               failurdBlock:(void (^)(void))failure;

/**
 *
 *  更新view的bottom约束
 *
 *  @param bottom       view的低部约束
 *  @param secondItem   view低部约束的参照视图对象
 *  @param topView      添加约束的那个view，一般为父view
 *  @param success      成功回调block
 *  @param failure      失败回调block
 */
- (void)updateBottomConstraint:(CGFloat)bottom
                 secondItem:(UIView *)secondItem
            secondAttribute:(NSLayoutAttribute)secondAttribute
                    topView:(UIView *)topView
               successBlock:(void (^)(void))success
               failurdBlock:(void (^)(void))failure;

/**
 *
 *  更新view的left约束
 *
 *  @param left         view的左边缘约束
 *  @param secondItem   view左边缘约束的参照视图对象
 *  @param topView      添加约束的那个view，一般为父view
 *  @param success      成功回调block
 *  @param failure      失败回调block
 */
- (void)updateLeftConstraint:(CGFloat)left
                 secondItem:(UIView *)secondItem
            secondAttribute:(NSLayoutAttribute)secondAttribute
                    topView:(UIView *)topView
               successBlock:(void (^)(void))success
               failurdBlock:(void (^)(void))failure;

/**
 *
 *  更新view的right约束
 *
 *  @param right        view的右边缘约束
 *  @param secondItem   view右边缘约束的参照视图对象
 *  @param topView      添加约束的那个view，一般为父view
 *  @param success      成功回调block
 *  @param failure      失败回调block
 */
- (void)updateRightConstraint:(CGFloat)right
                  secondItem:(UIView *)secondItem
             secondAttribute:(NSLayoutAttribute)secondAttribute
                     topView:(UIView *)topView
                successBlock:(void (^)(void))success
                failurdBlock:(void (^)(void))failure;
@end
