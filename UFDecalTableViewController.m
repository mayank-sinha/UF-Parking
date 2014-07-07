//
//  UFDecalTableViewController.m
//  UF Parking
//
//  Created by Mayank on 6/24/14.
//  Copyright (c) 2014 University of Florida. All rights reserved.
//

#import "UFDecalTableViewController.h"
#import "UFKMLData.h"
#import "UFKMLObject.h"
#import "UFViewController.h"

@interface UFDecalTableViewController ()

@end

@implementation UFDecalTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.kmls = [[NSMutableArray alloc] init];
    
    for (NSMutableDictionary *kmlData in [UFKMLData allKMLs])
    {
        UFKMLObject *kml = [[UFKMLObject alloc] initWithData:kmlData];
        [self.kmls addObject:kml];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;      // Return the number of sections.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.kmls.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    UFKMLObject *kml = [self.kmls objectAtIndex:indexPath.row];
    cell.textLabel.text = kml.title;                //To display the title in the row
    cell.detailTextLabel.text = kml.subtitle;       //To display the subtitle in the row
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UFKMLObject *selectedObject = self.kmls[indexPath.row];
    [self.delegate uFLDecalTableViewControllerDidSelect:self kml:selectedObject];    //[self setDecal];
}
  

//This will allow the user to rotate this view between orienations, and the controls will re-layout according to the autosizing attributes setup in Interface Builder.
-(BOOL)shouldAutorotate{
    return YES;
}

- (IBAction)cancelButtonPressed:(UIBarButtonItem *)sender {
    [self.delegate uFLDecalTableViewControllerDidCancel:self];
}

@end

