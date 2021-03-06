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

@interface UFDecalTableViewController : UITableViewController

@property (nonatomic, weak) id <UFDecalTableViewControllerDelegate> delegate;

@property(nonatomic, readonly, retain) UIImageView *imageView;

@property (strong, nonatomic) NSMutableArray *kmls;


- (IBAction)cancelButtonPressed:(UIBarButtonItem *)sender;

@end

