//
//  BadgeView.m
//  FlandersFieldsTEST1
//
//  Created by Tom Vanleenhove on 28/03/14.
//  Copyright (c) 2014 Renaat Stuijk. All rights reserved.
//

#import "BadgeView.h"

@implementation BadgeView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        UIImage *slider = [UIImage imageNamed:@"slider(back)"];
        UIImageView *sliderview = [[UIImageView alloc] initWithImage:slider];
        [sliderview setCenter:CGPointMake((sliderview.frame.size.width / 2)-5, sliderview.frame.size.height / 2)];
        [self addSubview:sliderview];
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
