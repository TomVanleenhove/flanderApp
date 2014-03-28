//
//  SideBarView.m
//  FlandersFieldsTEST1
//
//  Created by Renaat Stuijk on 25/03/14.
//  Copyright (c) 2014 Renaat Stuijk en Tom Vanleenhove. All rights reserved.
//

#import "SideBarView.h"

@implementation SideBarView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
            self.frame = CGRectMake(-self.frame.size.width + 50, 0, self.frame.size.width, self.frame.size.height);
        
        UITapGestureRecognizer *singleFingerTap =
        [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTap:)];
        [self addGestureRecognizer:singleFingerTap];
        //[singleFingerTap release];
        
        CGRect badgeBounds = CGRectMake(self.frame.size.width - 200, 64, 295,1281);
        self.badge = [[BadgeView alloc] initWithFrame:badgeBounds];
        [self addSubview:self.badge];
        
        UIImage *bg = [UIImage imageNamed:@"interfacebg"];
        UIImageView *bgview = [[UIImageView alloc] initWithImage:bg];
        [bgview setCenter:CGPointMake((bgview.frame.size.width / 2)-5, bgview.frame.size.height / 2)];
        [self addSubview:bgview];
        
        UIImage *headerbg = [UIImage imageNamed:@"headerbgAndre"];
        UIImageView *headerbgViewAndre = [[UIImageView alloc] initWithImage:headerbg];
        [headerbgViewAndre setCenter:CGPointMake((bgview.frame.size.width / 2)-5, 60)];
        [self addSubview:headerbgViewAndre];

        
        UIImage *labelinfobg = [UIImage imageNamed:@"labelinfobg"];
        UIImageView *labelinfo = [[UIImageView alloc] initWithImage:labelinfobg];
        [labelinfo setCenter:CGPointMake((bgview.frame.size.width / 2)-5, 200)];
        [self addSubview:labelinfo];
        
        self.lblNaam = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 500, 50)];
        self.lblNaam.textAlignment = NSTextAlignmentCenter;
        //RGB(254, 198, 112)
        self.lblNaam.textColor = [UIColor colorWithRed:254 green:198 blue:112 alpha:1];
        self.lblNaam.text = @"Andre Mare";
        self.lblNaam.center = CGPointMake(bgview.frame.size.width/2, 185);
        self.lblNaam.font = [UIFont fontWithName:@"Governor" size:40];
        self.lblNaam.shadowColor = [UIColor blackColor];
        self.lblNaam.shadowOffset = CGSizeMake(0.0, 1.0);
        [self addSubview:self.lblNaam];
        
        self.lblDate = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 20)];
        self.lblDate.textAlignment = NSTextAlignmentCenter;
        //RGB(254, 198, 112)
        self.lblDate.textColor = [UIColor brownColor];
        self.lblDate.text = @" (1885 - 1932)";
        self.lblDate.center = CGPointMake(bgview.frame.size.width/2 - 10, 237);
        self.lblDate.alpha = 0.8    ;
        self.lblDate.font = [UIFont fontWithName:@"AWConquerorSlab-Light" size:20];
        [self addSubview:self.lblDate];
        
        self.lblInfo = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 400, 400)];
        self.lblInfo.textAlignment = NSTextAlignmentLeft;
        self.lblInfo.textColor = [UIColor brownColor];
        self.lblInfo.numberOfLines = 0;
        self.lblInfo.text = @"André Mare is geboren in Argentan (Frankrijk) op 31 januari 1885. Hij 	toont al vroeg talent voor het tekenen en gaat dan ook toegepaste kunst en tekenen studeren in Parijs. Daar deelt hij een atelier met Fernand Léger op Montparnasse. Hij ontwerpt meubels, maar tekent en schildert ook. Hij stelt verschillende malen tentoon en vanaf 1912 gaat hij in zijn ontwerpen de kubistische toer op. Wanneer de oorlog uitbreekt, wordt hij wederopgeroepen en vertrekt als artillerist. Hij houdt een boekje bij waarin hij schrijft, tekent en schildert. In 1915 maakt hij het zware offensief in de Champagne mee.";
        self.lblInfo.center = CGPointMake(bgview.frame.size.width/2 - 10, 437);
        self.lblInfo.alpha = 0.8    ;
        self.lblInfo.font = [UIFont fontWithName:@"Aleo-Regular" size:17];
        [self addSubview:self.lblInfo];
        
        [UIView beginAnimations:@"bucketsOff" context:nil];
        [UIView setAnimationDuration:0.4];
        [UIView setAnimationDelegate:self];
        //position off screen
        //[bgview setCenter:CGPointMake((bgview.frame.size.width / 2)-5, bgview.frame.size.height / 2)];
        //[labelbgview setCenter:CGPointMake((bgview.frame.size.width / 2)-5, bgview.frame.size.height / 2)];
        //animate off screen
        [UIView commitAnimations];
        
        self.btnNuttig = [UIButton buttonWithType:UIButtonTypeCustom];
        UIImage *startBtn = [UIImage imageNamed:@"pull"];
        [self.btnNuttig setBackgroundImage:startBtn forState:normal];
        [self addSubview:self.btnNuttig];
        [self.btnNuttig setFrame:CGRectMake(self.frame.size.width -65, (self.frame.size.height - startBtn.size.height) / 2, startBtn.size.width, startBtn.size.height)];
        [self.btnNuttig addTarget:self action:@selector(PullKnop:) forControlEvents:UIControlEventTouchUpInside];
        
        CGRect meterBounds = CGRectMake(self.frame.size.width -70, 0, 133,1536);
        self.meter = [[MeterView alloc] initWithFrame:meterBounds];
        self.meter.userInteractionEnabled = NO;
        [self addSubview:self.meter];
        
        
    }
    return self;
}


- (void)PullKnop:(id)sender{
    NSLog(@"[mapboxview] sidebar being tapped");
    
    [UIView animateWithDuration:0.5f animations:^ {
        self.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
        self.badge.frame = CGRectMake(self.frame.size.width - 40, 64, 295,1281);
        self.btnNuttig.alpha = 0;
    }];
}

- (void)handleSingleTap:(UITapGestureRecognizer *)recognizer {
    
    [UIView animateWithDuration:0.5f animations:^ {
        self.frame = CGRectMake(-self.frame.size.width + 50, 0, self.frame.size.width, self.frame.size.height);
        self.badge.frame = CGRectMake(self.frame.size.width - 200, 64, 295,1281);
        self.btnNuttig.alpha = 1;
    }];
    //Do stuff here...
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
