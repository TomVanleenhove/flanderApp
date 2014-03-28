//
//  MapBoxView.h
//  FlandersFieldsTEST1
//
//  Created by Renaat Stuijk on 25/03/14.
//  Copyright (c) 2014 Renaat Stuijk. All rights reserved.
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


@interface MapBoxView : UIView

@property (strong, nonatomic) RMMapView *mapView;

@property (strong, nonatomic) SideBarView *sidebar;


@property (strong, nonatomic) NSMutableArray *stories;
@property (strong, nonatomic) NSMutableArray *stars;
@property (strong, nonatomic) NSMutableArray *mines;
@property (strong, nonatomic) NSMutableArray *pasts;

@end
