//
//  BadgeView.m
//  FlandersFieldsTEST1
//
//  Created by Tom Vanleenhove on 28/03/14.
//  Copyright (c) 2014 Renaat Stuijk en Tom Vanleenhove. All rights reserved.
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
        
        UIImage *badge1 = [UIImage imageNamed:@"badge1"];
        self.badge1View = [[UIImageView alloc] initWithImage:badge1];
        [self.badge1View setCenter:CGPointMake((self.badge1View.frame.size.width / 2)-5, self.badge1View.frame.size.height / 2)];
        self.badge1View.alpha = 0;
        [self addSubview:self.badge1View];
        
        UIImage *badge2 = [UIImage imageNamed:@"badge2"];
        self.badge2View = [[UIImageView alloc] initWithImage:badge2];
        [self.badge2View setCenter:CGPointMake((self.badge2View.frame.size.width / 2)-5, self.badge1View.frame.size.height + 1 + (self.badge2View.frame.size.height/2))];
        self.badge2View.alpha = 0;
        [self addSubview:self.badge2View];
        
        UIImage *badge3 = [UIImage imageNamed:@"badge3"];
        self.badge3View = [[UIImageView alloc] initWithImage:badge3];
        [self.badge3View setCenter:CGPointMake((self.badge3View.frame.size.width / 2)-5, self.badge2View.frame.origin.y + self.badge3View.frame.size.height + (self.badge2View.frame.size.height/2))];
        self.badge3View.alpha = 0;
        [self addSubview:self.badge3View];
        
        UIImage *badge4 = [UIImage imageNamed:@"badge4"];
        self.badge4View = [[UIImageView alloc] initWithImage:badge4];
        [self.badge4View setCenter:CGPointMake((self.badge4View.frame.size.width / 2)-5, self.badge3View.frame.origin.y + self.badge4View.frame.size.height + (self.badge3View.frame.size.height/2))];
        self.badge4View.alpha = 0;
        [self addSubview:self.badge4View];
        
        UIImage *badge5 = [UIImage imageNamed:@"badge5"];
        self.badge5View = [[UIImageView alloc] initWithImage:badge5];
        [self.badge5View setCenter:CGPointMake((self.badge5View.frame.size.width / 2)-5, self.badge4View.frame.origin.y + self.badge5View.frame.size.height + (self.badge4View.frame.size.height/2))];
        self.badge5View.alpha = 0;
        [self addSubview:self.badge5View];
        
        
    }
    return self;
}
-(void)showBadge:(int)badge{
    switch (badge) {
        case 1:
        {
            [UIImageView animateWithDuration:0.5f animations:^ {
                self.badge1View.alpha = 1;
            }];
        }
            break;
        case 2:
        {
            [UIImageView animateWithDuration:0.5f animations:^ {
                self.badge2View.alpha = 1;
            }];
        }
            break;
        case 3:
        {
            [UIImageView animateWithDuration:0.5f animations:^ {
                self.badge3View.alpha = 1;
            }];
        }
            break;
        case 4:
        {
            [UIImageView animateWithDuration:0.5f animations:^ {
                self.badge4View.alpha = 1;
            }];
        }
            break;
        case 5:
        {
            [UIImageView animateWithDuration:0.5f animations:^ {
                self.badge5View.alpha = 1;
            }];
        }
            break;
            
        default:
            break;
    }
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
