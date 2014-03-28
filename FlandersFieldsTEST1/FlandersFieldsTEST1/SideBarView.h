//
//  SideBarView.h
//  FlandersFieldsTEST1
//
//  Created by Renaat Stuijk on 25/03/14.
//  Copyright (c) 2014 Renaat Stuijk en Tom Vanleenhove. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "MeterView.h"
#import "BadgeView.h"
#import "Story.h"
@interface SideBarView : UIView


@property (nonatomic, strong) UIButton *btnNuttig;
@property (nonatomic, assign) SEL PullKnop;
@property (strong, nonatomic) MeterView *meter;
@property (strong, nonatomic) BadgeView *badge;
@property (strong, nonatomic) NSMutableArray *Stories;
@property (strong, nonatomic) Story *currentStory;
@property (strong, nonatomic) UIImage *headerbg;
@property (strong, nonatomic) UIImageView *headerbgView;





@property (strong, nonatomic) UILabel *lblNaam;
@property (strong, nonatomic) UILabel *lblDate;
@property (strong, nonatomic) UILabel *lblInfo;



@end
