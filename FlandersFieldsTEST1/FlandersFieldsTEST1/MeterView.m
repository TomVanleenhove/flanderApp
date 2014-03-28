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
        self.meterEmptyView = [[UIImageView alloc] initWithImage:meterEmpty];
        [self.meterEmptyView setCenter:CGPointMake((self.meterEmptyView.frame.size.width / 2)-5, self.meterEmptyView.frame.size.height / 2)];
        [self addSubview:self.meterEmptyView];
       
        self.mask = [CALayer layer];
        self.mask.contents = (id)[[UIImage imageNamed:@"interfacebg"] CGImage];
        self.mask.frame = CGRectMake(0, 0, meterEmpty.size.width, meterEmpty.size.height);
        self.meterEmptyView.layer.mask = self.mask;
        
        [self.meterEmptyView.layer setMasksToBounds:YES];
        
    }
    return self;
}
-(void)showMeter:(int)badge{
        [UIImageView animateWithDuration:0.9f animations:^ {
            self.mask.frame = CGRectMake(0, 0, self.meterEmptyView.frame.size.width, self.meterEmptyView.frame.size.height - ((self.meterEmptyView.frame.size.height / 5)*badge));

        }];
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
