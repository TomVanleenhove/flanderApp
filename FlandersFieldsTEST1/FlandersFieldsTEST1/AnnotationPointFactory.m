//
//  AnnotationPointFactory.m
//  FlandersFieldsTEST1
//
//  Created by Tom Vanleenhove on 28/03/14.
//  Copyright (c) 2014 Renaat Stuijk. All rights reserved.
//

#import "AnnotationPointFactory.h"
#import "AnnotationPoint.h"

@implementation AnnotationPointFactory
+(AnnotationPoint *)createAnnotationPointFromDictionary:(NSDictionary *)dictionary{
    AnnotationPoint *point =[[AnnotationPoint alloc] init];
    point.pointId = [[dictionary objectForKey:@"id"] intValue];
    point.longitude =[dictionary objectForKey:@"longitude"];
    point.latitude =[dictionary objectForKey:@"latitude"];
    point.type = [[dictionary objectForKey:@"type"] intValue];
    
    return point;
}
@end
