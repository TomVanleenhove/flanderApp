//
//  SideBarView.h
//  FlandersFieldsTEST1
//
//  Created by Renaat Stuijk on 25/03/14.
//  Copyright (c) 2014 Renaat Stuijk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "MeterView.h"
#import "BadgeView.h"
@interface SideBarView : UIView


@property (nonatomic, strong) UIButton *btnNuttig;
@property (nonatomic, assign) SEL PullKnop;
@property (strong, nonatomic) MeterView *meter;
@property (strong, nonatomic) BadgeView *badge;

@property (strong, nonatomic) UILabel *lblNaam;
@property (strong, nonatomic) UILabel *lblDate;
@property (strong, nonatomic) UITextField *txtInfo;



@end
