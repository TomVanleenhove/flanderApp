//
//  MeterView.h
//  FlandersFieldsTEST1
//
//  Created by Tom Vanleenhove on 27/03/14.
//  Copyright (c) 2014 Renaat Stuijk en Tom Vanleenhove. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MeterView : UIView
@property (strong, nonatomic) CALayer *mask;
@property (strong, nonatomic) UIImageView *meterEmptyView;

-(void)showMeter:(int)badge;
@end
