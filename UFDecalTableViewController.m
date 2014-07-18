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
    
    UIButton *decalButtonImage = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [decalButtonImage setFrame:CGRectMake(10, 10, 30, 30)];
    
    // To add the images for the decal in each row
    //UIImageView *decalImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    switch (indexPath.row) {
        case 0:
            //decalImage.image = [UIImage imageNamed:@"second"];
            //cell.imageView.backgroundColor = [UIColor grayColor];
            decalButtonImage.backgroundColor = [UIColor grayColor];
            break;
        case 1:
            //decalImage.image = [UIImage imageNamed:@"second"];
            decalButtonImage.backgroundColor = [UIColor redColor];
            break;
        case 2:
            //decalImage.image = [UIImage imageNamed:@"second"];
            decalButtonImage.backgroundColor = [UIColor magentaColor];
            break;
        case 3:
            //decalImage.image = [UIImage imageNamed:@"second"];
            decalButtonImage.backgroundColor = [UIColor greenColor];
            break;
        case 4:
            //decalImage.image = [UIImage imageNamed:@"second"];
            decalButtonImage.backgroundColor = [UIColor brownColor];
            break;
        case 5:
            //decalImage.image = [UIImage imageNamed:@"second"];
            decalButtonImage.backgroundColor = [UIColor orangeColor];
            break;
        case 6:
            //decalImage.image = [UIImage imageNamed:@"second"];
            decalButtonImage.backgroundColor = [UIColor blueColor];
            break;
        case 7:
            //decalImage.image = [UIImage imageNamed:@"second"];
            decalButtonImage.backgroundColor = [UIColor purpleColor];
            break;
        case 8:
            //decalImage.image = [UIImage imageNamed:@"second"];
            decalButtonImage.backgroundColor = [UIColor yellowColor];
            break;
        case 9:
            //decalImage.image = [UIImage imageNamed:@"second"];
            decalButtonImage.backgroundColor = [UIColor yellowColor];
            break;
        case 10:
            //decalImage.image = [UIImage imageNamed:@"second"];
            decalButtonImage.backgroundColor = [UIColor yellowColor];
            break;
        case 11:
            //decalImage.image = [UIImage imageNamed:@"second"];
            decalButtonImage.backgroundColor = [UIColor yellowColor];
            break;
        case 12:
            //decalImage.image = [UIImage imageNamed:@"second"];
            decalButtonImage.backgroundColor = [UIColor yellowColor];
            break;
        case 13:
            //decalImage.image = [UIImage imageNamed:@"second"];
            decalButtonImage.backgroundColor = [UIColor yellowColor];
            break;
        case 14:
            //decalImage.image = [UIImage imageNamed:@"second"];
            decalButtonImage.backgroundColor = [UIColor yellowColor];
            break;
        case 15:
            //decalImage.image = [UIImage imageNamed:@"second"];
            decalButtonImage.backgroundColor = [UIColor yellowColor];
            break;
        case 16:
            //decalImage.image = [UIImage imageNamed:@"second"];
            decalButtonImage.backgroundColor = [UIColor yellowColor];
            break;
        default:
            break;
    }
    
    //cell.imageView.image = decalImage.image;
    UFKMLObject *kml = [self.kmls objectAtIndex:indexPath.row];
    cell.textLabel.text = kml.title;                //To display the title in the row
    cell.detailTextLabel.text = kml.subtitle;       //To display the subtitle in the row
    [cell addSubview:decalButtonImage];
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

