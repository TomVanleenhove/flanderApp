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
        
        
        UIImage *bg = [UIImage imageNamed:@"interfacebg"];
        UIImageView *bgview = [[UIImageView alloc] initWithImage:bg];
        [bgview setCenter:CGPointMake((bgview.frame.size.width / 2)-5, bgview.frame.size.height / 2)];
        [self addSubview:bgview];
        
        UIImage *headerbg = [UIImage imageNamed:@"headerbgAndre"];
        UIImageView *headerbgViewAndre = [[UIImageView alloc] initWithImage:headerbg];
        [headerbgViewAndre setCenter:CGPointMake((bgview.frame.size.width / 2)-5, 60)];
        [self addSubview:headerbgViewAndre];

        
        UIImage *labelinfobg = [UIImage imageNamed:@"labelinfobg"];
        UIImageView *labelinfo = [[UIImageView alloc] initWithImage:labelinfobg];
        [labelinfo setCenter:CGPointMake((bgview.frame.size.width / 2)-5, 200)];
        [self addSubview:labelinfo];
        
        self.lblNaam = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 500, 50)];
        self.lblNaam.textAlignment = NSTextAlignmentCenter;
        //RGB(254, 198, 112)
        self.lblNaam.textColor = [UIColor colorWithRed:254 green:198 blue:112 alpha:1];
        self.lblNaam.text = @"Andre Mare";
        self.lblNaam.center = CGPointMake(bgview.frame.size.width/2, 185);
        self.lblNaam.font = [UIFont fontWithName:@"Governor" size:40];
        self.lblNaam.shadowColor = [UIColor blackColor];
        self.lblNaam.shadowOffset = CGSizeMake(0.0, 1.0);
        [self addSubview:self.lblNaam];
        
        self.lblDate = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 20)];
        self.lblDate.textAlignment = NSTextAlignmentCenter;
        //RGB(254, 198, 112)
        self.lblDate.textColor = [UIColor brownColor];
        self.lblDate.text = @" °1885 +1932)";
        self.lblDate.center = CGPointMake(bgview.frame.size.width/2 - 10, 237);
        self.lblDate.alpha = 0.8    ;
        self.lblDate.font = [UIFont fontWithName:@"Aleo-Regular" size:20];
        [self addSubview:self.lblDate];
        
        
        
        
        [UIView beginAnimations:@"bucketsOff" context:nil];
        [UIView setAnimationDuration:0.4];
        [UIView setAnimationDelegate:self];
        //position off screen
        //[bgview setCenter:CGPointMake((bgview.frame.size.width / 2)-5, bgview.frame.size.height / 2)];
        //[labelbgview setCenter:CGPointMake((bgview.frame.size.width / 2)-5, bgview.frame.size.height / 2)];
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
