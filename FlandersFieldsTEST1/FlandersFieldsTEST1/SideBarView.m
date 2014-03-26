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

        NSLog(@"sidebar added");
        
        UIImage *image = [UIImage imageNamed:@"interface"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        [imageView setCenter:CGPointMake(0, imageView.frame.size.height / 2)];
        [self addSubview:imageView];
        
        [UIView beginAnimations:@"bucketsOff" context:nil];
        [UIView setAnimationDuration:0.4];
        [UIView setAnimationDelegate:self];
        //position off screen
        [imageView setCenter:CGPointMake((imageView.frame.size.width / 2) -10, imageView.frame.size.height / 2)];
        //animate off screen
        [UIView commitAnimations];
        
        
        
        
    }
    return self;
}


- (void)PullKnop2:(id)sender{
    NSLog(@"[mapboxview] sidebar being tapped");
    
    
    
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
