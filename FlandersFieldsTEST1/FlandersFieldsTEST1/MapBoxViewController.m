//
//  MapBoxViewController.m
//  FlandersFieldsTEST1
//
//  Created by Renaat Stuijk on 25/03/14.
//  Copyright (c) 2014 Renaat Stuijk. All rights reserved.
//

#import "MapBoxViewController.h"

@interface MapBoxViewController ()

@end

@implementation MapBoxViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        /*self.view.alpha = 0;
        
        [UIView beginAnimations:@"fade in" context:nil];
        [UIView setAnimationDuration:3.0];
        self.view.alpha = 1;
        [UIView commitAnimations];*/
        
        NSString *pathStars = @"http://student.howest.be/tom.vanleenhove/20132014/MAIV/api/checkpoints/getStars";
        NSString *pathMinens = @"http://student.howest.be/tom.vanleenhove/20132014/MAIV/api/checkpoints/getMines";
        NSString *pathPast = @"http://student.howest.be/tom.vanleenhove/20132014/MAIV/api/checkpoints/getPastPoints";
        NSString *pathStories = @"http://student.howest.be/tom.vanleenhove/20132014/MAIV/api/stories/getStories";
        
        NSURL *urlStars = [NSURL URLWithString:pathStars];
        NSURL *urlMines = [NSURL URLWithString:pathMinens];
        NSURL *urlPast = [NSURL URLWithString:pathPast];
        NSURL *urlStories = [NSURL URLWithString:pathStories];
        
        NSURLRequest *requestStars = [NSURLRequest requestWithURL:urlStars];
        NSURLRequest *requestMines = [NSURLRequest requestWithURL:urlMines];
        NSURLRequest *requestPast = [NSURLRequest requestWithURL:urlPast];
        NSURLRequest *requestStories = [NSURLRequest requestWithURL:urlStories];
        
        AFHTTPRequestOperation *operationStars = [[AFHTTPRequestOperation alloc] initWithRequest:requestStars];
        AFHTTPRequestOperation *operationMines = [[AFHTTPRequestOperation alloc] initWithRequest:requestMines];
        AFHTTPRequestOperation *operationPast = [[AFHTTPRequestOperation alloc] initWithRequest:requestPast];
        AFHTTPRequestOperation *operationStories = [[AFHTTPRequestOperation alloc] initWithRequest:requestStories];
        
        operationStars.responseSerializer =[AFJSONResponseSerializer serializer];
        operationMines.responseSerializer =[AFJSONResponseSerializer serializer];
        operationPast.responseSerializer =[AFJSONResponseSerializer serializer];
        operationStories.responseSerializer =[AFJSONResponseSerializer serializer];
        
        
        [operationStars setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operationStars, id responseObject) {
            //NSLog(@"loaded StarPoints");
            self.stars = [NSMutableArray array];
            self.stars = responseObject;
            NSLog(@"stars %@",self.stars);
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            NSLog(@"error loading StarPoints");
        }];
        [operationMines setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operationMines, id responseObject) {
            //NSLog(@"loaded minePoints");
            self.mines = [NSMutableArray array];
            self.mines = responseObject;
            NSLog(@"mines %@",self.mines);
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            NSLog(@"error loading minePoints");
        }];
        [operationPast setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operationPast, id responseObject) {
            //NSLog(@"loaded pastPoints");
            self.pasts = [NSMutableArray array];
            self.pasts = responseObject;
            NSLog(@"pasts %@",self.pasts);
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            NSLog(@"error loading pastPoints");
        }];
        [operationStories setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operationStories, id responseObject) {
            //NSLog(@"loaded stories");
            self.stories = [NSMutableArray array];
            self.stories = responseObject;
            NSLog(@"stories %@",self.stories);
            
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            NSLog(@"error loading stories");
        }];
        
        
        [operationStars start];
        [operationMines start];
        [operationPast start];
        [operationStories start];

            }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.stories = self.stories;
    NSLog(@"[MapController] %@",self.stories);
    self.view.stars = self.stars;
    NSLog(@"[MapController] %@",self.stars);
    self.view.mines = self.mines;
    NSLog(@"[MapController] %@",self.mines);
    self.view.pasts = self.pasts;
    NSLog(@"[MapController] %@",self.pasts);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadView{
    
    CGRect bounds = CGRectMake(0, 0, 1024, 768);
    self.view = [[MapBoxView alloc] initWithFrame:bounds];
    
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
