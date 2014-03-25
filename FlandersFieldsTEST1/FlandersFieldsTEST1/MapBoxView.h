//
//  MapBoxView.h
//  FlandersFieldsTEST1
//
//  Created by Renaat Stuijk on 25/03/14.
//  Copyright (c) 2014 Renaat Stuijk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapBoxView.h"
#import <RMMapView.h>
#import <RMMapboxSource.h>
#import <RMPointAnnotation.h>
@class SideBarViewController;
#import "SideBarDelegate.h"
#import "SideBarView.h"

#import "SideBarViewController.h"


@interface MapBoxView : UIView

@property (strong, nonatomic) RMMapView *mapView;

@property (nonatomic, strong) UIButton *btnNuttig;
@property (nonatomic, assign) SEL knopTapped;
@property (nonatomic, assign) SEL finishAnimation;


@end
