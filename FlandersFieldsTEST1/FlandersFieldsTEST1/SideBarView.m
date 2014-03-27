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
        
        /*UIImage *image = [UIImage imageNamed:@"interface"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        [imageView setCenter:CGPointMake(0, imageView.frame.size.height / 2)];
        [self addSubview:imageView];*/
        
        [UIView beginAnimations:@"bucketsOff" context:nil];
        [UIView setAnimationDuration:0.4];
        [UIView setAnimationDelegate:self];
        //position off screen
        //animate off screen
        [UIView commitAnimations];
        
        self.lblNaam = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
        self.lblNaam.textAlignment = NSTextAlignmentCenter;
        self.lblNaam.textColor = [UIColor blackColor];
        self.lblNaam.text = @"Andre Mare";
        self.lblNaam.center = CGPointMake(100, 200);
        [self addSubview:self.lblNaam];
        
        
        
        
        
        
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
