//
//  FMViewController.m
//  HYPEventManagerDemo
//
//  Created by Felipe Baytelman on 6/10/14.
//  Copyright (c) 2014 fitmob inc. All rights reserved.
//

#import "FMViewController.h"
#import <HYPEventManager.h>

#import <EventKit/EventKit.h>

@interface FMViewController ()
@property int eventCount;
@end

@implementation FMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.eventCount = 0;
    
    [self addEvents];
}

- (void)addEvents
{
    if (self.eventCount >= 5) {
        [self printAllEventsWithOddNames];
        return;
    }
    
    self.eventCount++;    
}

- (void)printAllEventsWithOddNames
{
    [[HYPEventManager sharedManager] nearEventsInCalendarsWithFilter:^BOOL(EKEvent *event) {
        return [event.title rangeOfString:@"2"].location == NSNotFound && [event.title rangeOfString:@"4"].location == NSNotFound;
    } completition:^(NSArray *events) {
        for (EKEvent * event in events) {
            NSLog(@"%@", event.title);
        }
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
