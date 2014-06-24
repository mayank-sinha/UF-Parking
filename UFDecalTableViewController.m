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

@interface UFLDecalTableViewController ()

@end

@implementation UFLDecalTableViewController

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
    //self.searchResults = [[NSArray alloc] init];
    
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
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section based on the search results.
    //    if (tableView == self.searchDisplayController.searchResultsTableView) {
    //        return self.searchResults.count;
    //    } else {
    //        return self.kmls.count;
    //    }
    return self.kmls.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    //    if (tableView == self.searchDisplayController.searchResultsTableView) {
    //        cell.textLabel.text = [self.searchResults objectAtIndex:indexPath.row];
    //    } else {
    //        cell.textLabel.text = [self.kmls objectAtIndex:indexPath.row];
    //    }
    
    
    UFKMLObject *kml = [self.kmls objectAtIndex:indexPath.row];
    cell.textLabel.text = kml.title;          //To display the title in the row
    cell.detailTextLabel.text = kml.subtitle; //To display the subtitle in the row
    //    //cell.imageView.image = kml.image;       //To display the thumbnail image for each decal in the row
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UFKMLObject *selectedObject = self.kmls[indexPath.row];
    [self.delegate uFLDecalTableViewControllerDidSelect:self kml:selectedObject];    //[self setDecal];
}


//#pragma Search Methods
//
//- (void)filterContentForSearchText:(NSString *)searchText scope:(NSString *) scope{
//
//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF beginwith[c] %@" , searchText];
//    self.searchResults = [self.kmls filteredArrayUsingPredicate:predicate];
//}
//
//-(BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString{
//    [self filterContentForSearchText:searchString scope:[[self.searchDisplayController.searchBar scopeButtonTitles] objectAtIndex:[self.searchDisplayController.searchBar selectedScopeButtonIndex]]];
//    return YES;
//}

//This will allow the user to rotate this view between orienations, and the controls will re-layout according to the autosizing attributes setup in Interface Builder.
-(BOOL)shouldAutorotate{
    return YES;
}

- (IBAction)cancelButtonPressed:(UIBarButtonItem *)sender {
    [self.delegate uFLDecalTableViewControllerDidCancel:self];
}

@end

/* To display the thumbnail images for each row
 
 UIImage *fullImage = (UIImage *) [infor objectForKey:UIImagePickerControllerOriginalImaage];
 UIImage *thumbImage = [fullImage imageByScalingAndCroppingSize:CGSizeMake(44,44)];
 */


// Uncomment the following line to preserve selection between presentations.
// self.clearsSelectionOnViewWillAppear = NO;

// Uncomment the following line to display an Edit button in the navigation bar for this view controller.
// self.navigationItem.rightBarButtonItem = self.editButtonItem;

//-----------------------------------------------------------------------------------------------

// Configure the cell...
//cell.textLabel.text = [self.planets objectAtIndex:indexPath.row];

/*
 if (indexPath.section == 0) {
 cell.backgroundColor = [UIColor redColor];
 }
 else {
 cell.backgroundColor = [UIColor blueColor];
 }
 */

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */
