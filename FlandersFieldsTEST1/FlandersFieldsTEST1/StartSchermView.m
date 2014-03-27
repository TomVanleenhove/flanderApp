//
//  StartSchermView.m
//  FlandersFieldsTEST1
//
//  Created by Renaat Stuijk on 25/03/14.
//  Copyright (c) 2014 Renaat Stuijk. All rights reserved.
//

#import "StartSchermView.h"

@implementation StartSchermView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code

        
        UIButton *start = [UIButton buttonWithType:UIButtonTypeCustom];
        UIImage *startBtn = [UIImage imageNamed:@"startBtn"];
        [start setBackgroundImage:startBtn forState:normal];
        [self addSubview:start];
        [start setFrame:CGRectMake((self.frame.size.width - startBtn.size.width) / 2, ((self.frame.size.height - startBtn.size.height) / 2) + 180, startBtn.size.width, startBtn.size.height)];
        
        [start addTarget:self action:@selector(startKnopTapped:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return self;
}



- (void)startKnopTapped:(id)sender{
    NSLog(@"[startschermview] start being tapped");
    
    
    self.alpha = 1;
    [UIView beginAnimations:@"fade in" context:nil];
    [UIView setAnimationDuration:0.9];
    self.alpha = 0;
    [UIView commitAnimations];
    
    MapBoxViewController *mapBoxVC = [[MapBoxViewController alloc] initWithNibName:nil bundle:nil];
    self.window.rootViewController = mapBoxVC;
    
    
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
