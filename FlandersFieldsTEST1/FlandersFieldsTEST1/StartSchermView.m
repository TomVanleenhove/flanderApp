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
        self.backgroundColor = [UIColor blueColor];
        
        
        UIImage *image = [UIImage imageNamed:@"startscherm"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        self.frame = CGRectMake(0,0,1024,768);
        [self addSubview:imageView];
        
        
        self.btnStart = [UIButton buttonWithType:UIButtonTypeSystem];
        [self.btnStart setTitle:@"Start" forState:UIControlStateNormal];
        self.btnStart.frame = CGRectMake(0, 0, 200, 30);
        self.btnStart.center = CGPointMake(self.frame.size.width / 2, self.frame.size.height - (100));
        [self addSubview:self.btnStart];
        [self.btnStart addTarget:self action:@selector(startKnopTapped:) forControlEvents:UIControlEventTouchUpInside];
        
        
        
        
    }
    return self;
}



- (void)startKnopTapped:(id)sender{
    NSLog(@"[startschermview] start being tapped");
    
    
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
