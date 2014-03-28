//
//  StoryFactory.m
//  FlandersFieldsTEST1
//
//  Created by Tom Vanleenhove on 28/03/14.
//  Copyright (c) 2014 Renaat Stuijk. All rights reserved.
//

#import "StoryFactory.h"

@implementation StoryFactory
+(Story *)createStoriesFromDictionary:(NSDictionary *)dictionary{
    
    Story *story =[[Story alloc] init];
    story.title =[dictionary objectForKey:@"title"];
    story.lifetime =[dictionary objectForKey:@"lifetime"];
    story.text =[dictionary objectForKey:@"text"];
    story.H_Pic =[dictionary objectForKey:@"H_pic"];
    
    return story;
}

@end
