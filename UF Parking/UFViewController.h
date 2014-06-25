//
//  UFViewController.h
//  UF Parking
//
//  Created by Mayank on 6/24/14.
//  Copyright (c) 2014 University of Florida. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UFKMLObject.h"
#import "UFDecalTableViewController.h"
#import <MapKit/MapKit.h>
#import "UFKMLParser.h"


@interface UFViewController : UIViewController <UFDecalTableViewControllerDelegate, MKMapViewDelegate>{
    
    MKMapView *mapView;
    KMLParser *kmlParser;
    NSString *selectedKML;
    
}

@property (strong, nonatomic) UFKMLObject *currentKMLObject;
//@property (strong, nonatomic) IBOutlet UILabel *kmlLabel;
@property (nonatomic, retain) IBOutlet MKMapView *mapView;

-(void)setCurrentKmlObject:(UFKMLObject *)kmlObject;
@end
