//
//  MapBoxView.m
//  FlandersFieldsTEST1
//
//  Created by Renaat Stuijk on 25/03/14.
//  Copyright (c) 2014 Renaat Stuijk. All rights reserved.
//

#import "MapBoxView.h"

@implementation MapBoxView

- (id)initWithFrame:(CGRect)frame andStories:(NSMutableArray *)stories andStars:(NSMutableArray *)stars andMines:(NSMutableArray *)mines andPasts:(NSMutableArray *)pasts
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        RMMapboxSource *source = [[RMMapboxSource alloc] initWithMapID:@"renaatst.hjogkfe8"];
        self.mapView = [[RMMapView alloc] initWithFrame:frame andTilesource:source centerCoordinate:CLLocationCoordinate2DMake(50.868008, 2.886401) zoomLevel:10 maxZoomLevel:20 minZoomLevel:11 backgroundImage:nil];
        [self addSubview:self.mapView];
        
        NSLog(@"%@",stars);
        for (NSDictionary *star in stars) {
            NSLog(@"dans");
        }
        
        
        self.btnNuttig = [UIButton buttonWithType:UIButtonTypeCustom];
        UIImage *startBtn = [UIImage imageNamed:@"pull"];
        [self.btnNuttig setBackgroundImage:startBtn forState:normal];
        [self addSubview:self.btnNuttig];
        [self.btnNuttig setFrame:CGRectMake(-40, (self.frame.size.height - startBtn.size.height) / 2, startBtn.size.width, startBtn.size.height)];
        [self.btnNuttig addTarget:self action:@selector(PullKnop:) forControlEvents:UIControlEventTouchUpInside];

        
        
        
    }
    return self;
}




- (void)PullKnop:(id)sender{
    NSLog(@"[mapboxview] sidebar being tapped");

    
    UIView *centerView = [[SideBarView alloc] init];
    [centerView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self addSubview:centerView];
    
    
    if (!centerView) {
        NSLog(@"geen center");
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
