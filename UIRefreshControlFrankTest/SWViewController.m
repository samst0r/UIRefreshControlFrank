//
//  SWViewController.m
//  UIRefreshControlFrankTest
//
//  Created by Samuel Ward on 26/01/2014.
//  Copyright (c) 2014 Samuel Ward. All rights reserved.
//

#import "SWViewController.h"

@implementation SWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    UIRefreshControl *refreshControl = [[UIRefreshControl alloc] init];
    
    [refreshControl addTarget:self
                       action:@selector(refresh)
             forControlEvents:UIControlEventValueChanged];
    
    self.refreshControl = refreshControl;
}

#pragma mark - Other

- (void)refresh {
    
    double delayInSeconds = 2.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        [self.refreshControl endRefreshing];
    });
}

#pragma mark - TableView
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return [[UITableViewCell alloc] init];
}

@end
