//
//  AnnotationPoint.h
//  FlandersFieldsTEST1
//
//  Created by Tom Vanleenhove on 28/03/14.
//  Copyright (c) 2014 Renaat Stuijk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AnnotationPoint : NSObject
@property (nonatomic) int pointId;
@property (strong, nonatomic) NSNumber *longitude;
@property (strong, nonatomic) NSNumber *latitude;
@property (nonatomic) int type;
@end
