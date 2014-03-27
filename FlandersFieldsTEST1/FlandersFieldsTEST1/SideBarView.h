//
//  SideBarView.h
//  FlandersFieldsTEST1
//
//  Created by Renaat Stuijk on 25/03/14.
//  Copyright (c) 2014 Renaat Stuijk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
@interface SideBarView : UIView


@property (nonatomic, strong) UIButton *btnBack;
@property (nonatomic, assign) SEL PullKnopback2;

@property (strong, nonatomic) UILabel *lblNaam;
@property (strong, nonatomic) UILabel *lblDate;



@end
