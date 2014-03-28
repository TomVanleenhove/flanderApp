//
//  MeterView.m
//  FlandersFieldsTEST1
//
//  Created by Tom Vanleenhove on 27/03/14.
//  Copyright (c) 2014 Renaat Stuijk en Tom Vanleenhove. All rights reserved.
//

#import "MeterView.h"

@implementation MeterView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        UIImage *meter = [UIImage imageNamed:@"meter(vol)"];
        UIImageView *meterview = [[UIImageView alloc] initWithImage:meter];
        [meterview setCenter:CGPointMake((meterview.frame.size.width / 2)-5, meterview.frame.size.height / 2)];
        [self addSubview:meterview];
        
        
        
        UIImage *meterEmpty = [UIImage imageNamed:@"meter(leeg)"];
        UIImageView *meterEmptyView = [[UIImageView alloc] initWithImage:meterEmpty];
        [meterEmptyView setCenter:CGPointMake((meterEmptyView.frame.size.width / 2)-5, meterEmptyView.frame.size.height / 2)];
        [self addSubview:meterEmptyView];

    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
