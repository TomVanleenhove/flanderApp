//
//  AnnotationPointFactory.h
//  FlandersFieldsTEST1
//
//  Created by Tom Vanleenhove on 28/03/14.
//  Copyright (c) 2014 Renaat Stuijk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AnnotationPoint.h"

@interface AnnotationPointFactory : NSObject
+(AnnotationPoint *)createAnnotationPointFromDictionary:(NSDictionary *)dictionary;

@end
