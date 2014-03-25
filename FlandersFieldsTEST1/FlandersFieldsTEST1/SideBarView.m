//
//  SideBarView.m
//  FlandersFieldsTEST1
//
//  Created by Renaat Stuijk on 25/03/14.
//  Copyright (c) 2014 Renaat Stuijk. All rights reserved.
//

#import "SideBarView.h"

@implementation SideBarView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        
        UIImage *image = [UIImage imageNamed:@"interface"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        self.frame = CGRectMake(0,0,512,768);
        [self addSubview:imageView];
        
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
