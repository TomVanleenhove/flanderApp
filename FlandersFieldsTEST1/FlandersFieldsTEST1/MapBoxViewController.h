//
//  MapBoxViewController.h
//  FlandersFieldsTEST1
//
//  Created by Renaat Stuijk on 25/03/14.
//  Copyright (c) 2014 Renaat Stuijk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapBoxView.h"
@interface MapBoxViewController : UIViewController
@property(nonatomic) CGRect bounds;


@property (strong, nonatomic) NSMutableArray *stories;
@property (strong, nonatomic) NSMutableArray *stars;
@property (strong, nonatomic) NSMutableArray *mines;
@property (strong, nonatomic) NSMutableArray *pasts;
@end
