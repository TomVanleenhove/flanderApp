//
//  MapBoxView.m
//  FlandersFieldsTEST1
//
//  Created by Renaat Stuijk on 25/03/14.
//  Copyright (c) 2014 Renaat Stuijk en Tom Vanleenhove. All rights reserved.
//

#import "MapBoxView.h"

@implementation MapBoxView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        NSLog(@"VIEW %@",self.stars);
        
        RMMapboxSource *source = [[RMMapboxSource alloc] initWithMapID:@"renaatst.hkknk2f2"];
        self.mapView = [[RMMapView alloc] initWithFrame:frame andTilesource:source centerCoordinate:CLLocationCoordinate2DMake(50.875729, 2.899617) zoomLevel: 15 maxZoomLevel:20 minZoomLevel: 10 backgroundImage:[UIImage imageNamed:@"bg"]];
        
        self.mapView.delegate = self;
        
        [self addSubview:self.mapView];
        
        CGRect bounds = CGRectMake(0, 0, 552, 768);
        self.sidebar = [[SideBarView alloc] initWithFrame:bounds];
        [self addSubview:self.sidebar];
    }
    return self;
}

- (void)setStars:(NSMutableArray *)newStars {
    for (NSDictionary *star in newStars) {
         AnnotationPoint *parsedStar = [AnnotationPointFactory createAnnotationPointFromDictionary:star];
        
        CLLocationCoordinate2D coord;
        coord.longitude = (CLLocationDegrees)[parsedStar.latitude doubleValue];
        coord.latitude = (CLLocationDegrees)[parsedStar.longitude doubleValue];
        NSString *title = [NSString stringWithFormat:@"star%d", parsedStar.pointId];
        
        RMPointAnnotation *annotation = [[RMPointAnnotation alloc] initWithMapView:self.mapView coordinate:coord andTitle:title];
        
        annotation.userInfo = @"star";
        
        [self.mapView addAnnotation:annotation];
    }
    
}
- (void)setPasts:(NSMutableArray *)newPasts {
    for (NSDictionary *past in newPasts) {
        AnnotationPoint *parsedPast = [AnnotationPointFactory createAnnotationPointFromDictionary:past];
        
        CLLocationCoordinate2D coord;
        coord.longitude = (CLLocationDegrees)[parsedPast.latitude doubleValue];
        coord.latitude = (CLLocationDegrees)[parsedPast.longitude doubleValue];
        NSString *title = [NSString stringWithFormat:@"past%d", parsedPast.pointId];
        
        RMPointAnnotation *annotation = [[RMPointAnnotation alloc] initWithMapView:self.mapView coordinate:coord andTitle:title];
        
        annotation.userInfo = @"past";
        
        [self.mapView addAnnotation:annotation];
    }
}
- (void)setMines:(NSMutableArray *)newMines {
    for (NSDictionary *mine in newMines) {
        AnnotationPoint *parsedMines = [AnnotationPointFactory createAnnotationPointFromDictionary:mine];
        
        CLLocationCoordinate2D coord;
        coord.longitude = (CLLocationDegrees)[parsedMines.latitude doubleValue];
        coord.latitude = (CLLocationDegrees)[parsedMines.longitude doubleValue];
        NSString *title = [NSString stringWithFormat:@"mine"];
        
        RMPointAnnotation *annotation = [[RMPointAnnotation alloc] initWithMapView:self.mapView coordinate:coord andTitle:title];
        
        annotation.userInfo = @"mine";
        
        [self.mapView addAnnotation:annotation];
        
        
    }

}
/*- (void)setStories:(NSMutableArray *)newStories {
    self.stories = newStories;
}*/

- (RMMapLayer *)mapView:(RMMapView *)mapView layerForAnnotation:(RMAnnotation *)annotation
{
    NSLog(@"DANSEN DANSEN DANSE");
    if (annotation.isUserLocationAnnotation)
        return nil;
    
    RMMarker *marker;
    
    if ([annotation.userInfo isEqualToString:@"star"])
    {
        marker = [[RMMarker alloc] initWithUIImage:[UIImage imageNamed:@"star(icon)"]];
    }
    else if ([annotation.userInfo isEqualToString:@"past"])
    {
        marker = [[RMMarker alloc] initWithUIImage:[UIImage imageNamed:@"past(icon)"]];
    }
    else if ([annotation.userInfo isEqualToString:@"mine"])
    {
        marker = [[RMMarker alloc] initWithUIImage:[UIImage imageNamed:@"mine(icon)"]];
    }
    
    marker.canShowCallout = YES;
    
    return marker;
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
