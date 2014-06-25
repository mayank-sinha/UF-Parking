//
//  UFDecalTableViewController.h
//  UF Parking
//
//  Created by Mayank on 6/24/14.
//  Copyright (c) 2014 University of Florida. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UFKMLObject.h"

@class UFDecalTableViewController;

@protocol UFDecalTableViewControllerDelegate <NSObject>
- (void)uFLDecalTableViewControllerDidCancel:(UFDecalTableViewController *)controller;
- (void)uFLDecalTableViewControllerDidSelect:(UFDecalTableViewController *)controller kml:(UFKMLObject *) kmlObject;

@end

@interface UFDecalTableViewController : UITableViewController //<UISearchDisplayDelegate>

@property (nonatomic, weak) id <UFDecalTableViewControllerDelegate> delegate;

@property (strong, nonatomic) NSMutableArray *kmls;

//@property (strong, nonatomic) NSArray *searchResults;

- (IBAction)cancelButtonPressed:(UIBarButtonItem *)sender;

@end

