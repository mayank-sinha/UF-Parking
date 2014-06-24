//
//  UFDecalTableViewController.h
//  UF Parking
//
//  Created by Mayank on 6/24/14.
//  Copyright (c) 2014 University of Florida. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UFKMLObject.h"

@class UFLDecalTableViewController;

@protocol UFLDecalTableViewControllerDelegate <NSObject>
- (void)uFLDecalTableViewControllerDidCancel:(UFLDecalTableViewController *)controller;
- (void)uFLDecalTableViewControllerDidSelect:(UFLDecalTableViewController *)controller kml:(UFKMLObject *) kmlObject;

@end

@interface UFLDecalTableViewController : UITableViewController //<UISearchDisplayDelegate>

@property (nonatomic, weak) id <UFLDecalTableViewControllerDelegate> delegate;

@property (strong, nonatomic) NSMutableArray *kmls;

//@property (strong, nonatomic) NSArray *searchResults;

- (IBAction)cancelButtonPressed:(UIBarButtonItem *)sender;

@end

