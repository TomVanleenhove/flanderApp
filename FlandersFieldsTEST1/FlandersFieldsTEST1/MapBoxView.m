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
        NSLog(@"VIEW %@",self.stories);
        
        RMMapboxSource *source = [[RMMapboxSource alloc] initWithMapID:@"renaatst.hkknk2f2"];
        self.mapView = [[RMMapView alloc] initWithFrame:frame andTilesource:source centerCoordinate:CLLocationCoordinate2DMake(50.875729, 2.899617) zoomLevel: 15 maxZoomLevel:20 minZoomLevel: 10 backgroundImage:[UIImage imageNamed:@"bg"]];
        
        
        
        RMPointAnnotation *annotation1 = [[RMPointAnnotation alloc] initWithMapView:self.mapView coordinate:CLLocationCoordinate2DMake(50.883392, 2.897858) andTitle:@"Stop 1"];
        RMPointAnnotation *annotation2 = [[RMPointAnnotation alloc] initWithMapView:self.mapView coordinate:CLLocationCoordinate2DMake(50.883406, 2.880240) andTitle:@"Stop 2"];
        RMPointAnnotation *annotation3 = [[RMPointAnnotation alloc] initWithMapView:self.mapView coordinate:CLLocationCoordinate2DMake(50.873617, 2.898415) andTitle:@"Stop 3"];
        RMPointAnnotation *annotation4 = [[RMPointAnnotation alloc] initWithMapView:self.mapView coordinate:CLLocationCoordinate2DMake(50.877990, 2.910067) andTitle:@"Stop 4"];
        RMPointAnnotation *annotation5 = [[RMPointAnnotation alloc] initWithMapView:self.mapView coordinate:CLLocationCoordinate2DMake(50.879561, 2.897922) andTitle:@"Stop 5"];
        
        NSMutableArray *points = [NSMutableArray arrayWithObjects: annotation1, annotation2, annotation3, annotation4, annotation5, nil];
        [self.mapView addAnnotations:points];
        [self addSubview:self.mapView];
        
        
        CGRect bounds = CGRectMake(0, 0, 552, 768);
        self.sidebar = [[SideBarView alloc] initWithFrame:bounds];
        [self addSubview:self.sidebar];
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
