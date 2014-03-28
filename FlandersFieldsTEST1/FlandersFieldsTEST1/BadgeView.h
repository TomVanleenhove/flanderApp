//
//  BadgeView.h
//  FlandersFieldsTEST1
//
//  Created by Tom Vanleenhove on 28/03/14.
//  Copyright (c) 2014 Renaat Stuijk en Tom Vanleenhove. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BadgeView : UIView
@property (strong, nonatomic) UIImageView *badge1View;
@property (strong, nonatomic) UIImageView *badge2View;
@property (strong, nonatomic) UIImageView *badge3View;
@property (strong, nonatomic) UIImageView *badge4View;
@property (strong, nonatomic) UIImageView *badge5View;


-(void)showBadge:(int)badge;
@end
