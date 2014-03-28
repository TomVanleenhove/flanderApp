//
//  MapBoxView.h
//  FlandersFieldsTEST1
//
//  Created by Renaat Stuijk on 25/03/14.
//  Copyright (c) 2014 Renaat Stuijk en Tom Vanleenhove. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapBoxView.h"
#import "SideBarView.h"
#import <RMMapView.h>
#import <RMMapboxSource.h>
#import <RMPointAnnotation.h>
//#import "StartschermViewController.h"
#import <RMPointAnnotation.h>
#import <RMMarker.h>
#import "AnnotationPoint.h"
#import "AnnotationPointFactory.h"
#import <CoreLocation/CoreLocation.h>




@interface MapBoxView : UIView<RMMapViewDelegate>



@property (strong, nonatomic) RMMapView *mapView;

@property (strong, nonatomic) SideBarView *sidebar;



@property (strong, nonatomic) NSMutableArray *stories;
@property (strong, nonatomic) NSMutableArray *stars;
@property (strong, nonatomic) NSMutableArray *mines;
@property (strong, nonatomic) NSMutableArray *pasts;
@property (strong, nonatomic) RMAnnotation *annotation;


@end
