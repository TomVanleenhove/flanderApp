//
//  StoryFactory.h
//  FlandersFieldsTEST1
//
//  Created by Tom Vanleenhove on 28/03/14.
//  Copyright (c) 2014 Renaat Stuijk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Story.h"

@interface StoryFactory : NSObject
+(Story *)createStoriesFromDictionary:(NSDictionary *)dictionary;

@end
