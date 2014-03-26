//
//  StartschermViewController.h
//  FlandersFieldsTEST1
//
//  Created by Renaat Stuijk on 25/03/14.
//  Copyright (c) 2014 Renaat Stuijk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import "StartSchermView.h"


@interface StartschermViewController : UIViewController

@property(nonatomic) CGRect bounds;
@property (strong, nonatomic) MPMoviePlayerViewController *playerViewController;

@end
