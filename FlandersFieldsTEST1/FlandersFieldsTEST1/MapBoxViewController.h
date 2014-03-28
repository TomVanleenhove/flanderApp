//
//  MapBoxViewController.h
//  FlandersFieldsTEST1
//
//  Created by Renaat Stuijk on 25/03/14.
//  Copyright (c) 2014 Renaat Stuijk en Tom Vanleenhove. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapBoxView.h"
#import <AFNetworking.h>/*
#import <CoreLocation/CoreLocation.h>
@interface MapBoxViewController : UIViewController*/

#import<CoreLocation/CoreLocation.h>
@interface MapBoxViewController : UIViewController
@property (nonatomic, retain) CLLocationManager *locManager;


@property(nonatomic) CGRect bounds;

@property (strong, nonatomic) MapBoxView *view;


@property (strong, nonatomic) NSMutableArray *stories;
@property (strong, nonatomic) NSMutableArray *stars;
@property (strong, nonatomic) NSMutableArray *mines;
@property (strong, nonatomic) NSMutableArray *pasts;




@end
