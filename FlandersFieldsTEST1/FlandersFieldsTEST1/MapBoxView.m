//
//  MapBoxView.m
//  FlandersFieldsTEST1
//
//  Created by Renaat Stuijk on 25/03/14.
//  Copyright (c) 2014 Renaat Stuijk. All rights reserved.
//

#import "MapBoxView.h"

@implementation MapBoxView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        
        RMMapboxSource *source = [[RMMapboxSource alloc] initWithMapID:@"renaatst.hjogkfe8"];
        self.mapView = [[RMMapView alloc] initWithFrame:frame andTilesource:source centerCoordinate:CLLocationCoordinate2DMake(50.854656, 2.887257) zoomLevel:2 maxZoomLevel:15 minZoomLevel:4 backgroundImage:nil];
        [self addSubview:self.mapView];
        
        
        
        self.btnNuttig = [UIButton buttonWithType:UIButtonTypeSystem];
        [self.btnNuttig setTitle:@"Click me" forState:UIControlStateNormal];
        self.btnNuttig.frame = CGRectMake(0, 0, 200, 30);
        self.btnNuttig.center = CGPointMake(self.frame.size.width / 2, self.frame.size.height - (100));
        [self addSubview:self.btnNuttig];
        [self.btnNuttig addTarget:self action:@selector(knopTapped:) forControlEvents:UIControlEventTouchUpInside];
        
        
        
        
        
    }
    return self;
}




- (void)knopTapped:(id)sender{
    NSLog(@"[mapboxview] sidebar being tapped");
    
    SideBarViewController *sideBarVC = [[SideBarViewController alloc] initWithNibName:nil bundle:nil];
    self.window.rootViewController = sideBarVC;
    
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
