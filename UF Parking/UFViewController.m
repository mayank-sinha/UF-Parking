//
//  UFViewController.m
//  UF Parking
//
//  Created by Mayank on 6/24/14.
//  Copyright (c) 2014 University of Florida. All rights reserved.
//

#import "UFViewController.h"
#import "UFDecalTableViewController.h"

@interface UFViewController ()

@end

@implementation UFViewController

@synthesize mapView;


- (void)uFLDecalTableViewControllerDidSelect:(UFDecalTableViewController *)controller kml:(UFKMLObject *) kmlObject
{
    selectedKML = kmlObject.file_name;
    NSLog(@"Decal selected is: %@", selectedKML);
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)loadMapViewForSelectedDecal{
    
    //KML Parsing
    // Locate the path to the .kml file in the application's bundle
    // and parse it with the KMLParser.
    
    NSLog(@"Decal selected here is: %@", selectedKML);
    NSString *path = [[NSBundle mainBundle] pathForResource:selectedKML ofType:@"kml"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSLog(@"url: %@",url);
    kmlParser = [[KMLParser alloc] initWithURL:url];
    [kmlParser parseKML];
    
    // Add all of the MKOverlay objects parsed from the KML file to the map.
    NSArray *overlays = [kmlParser overlays];
    [mapView addOverlays:overlays];
    
    // Add all of the MKAnnotation objects parsed from the KML file to the map.
    NSArray *annotations = [kmlParser points];
    [mapView addAnnotations:annotations];
    
    // Walk the list of overlays and annotations and create a MKMapRect that
    // bounds all of them and store it into flyTo.
    MKMapRect flyTo = MKMapRectNull;
    for (id <MKOverlay> overlay in overlays) {
        if (MKMapRectIsNull(flyTo)) {
            flyTo = [overlay boundingMapRect];
        } else {
            flyTo = MKMapRectUnion(flyTo, [overlay boundingMapRect]);
        }
    }
    
    for (id <MKAnnotation> annotation in annotations) {
        MKMapPoint annotationPoint = MKMapPointForCoordinate(annotation.coordinate);
        MKMapRect pointRect = MKMapRectMake(annotationPoint.x, annotationPoint.y, 0, 0);
        if (MKMapRectIsNull(flyTo)) {
            flyTo = pointRect;
        } else {
            flyTo = MKMapRectUnion(flyTo, pointRect);
        }
    }
    
    // Position the map so that all overlays and annotations are visible on screen.
    mapView.visibleMapRect = flyTo;
    
    
}

- (void)setDefaultMapView
{
    NSLog(@"Decal selected in viewDidAppear is: %@", selectedKML);
    self.mapView.mapType = MKMapTypeStandard;
    self.mapView.showsUserLocation = YES;
}

- (void)viewDidLoad
{
    
	// Do any additional setup after loading the view, typically from a nib.
    [super viewDidLoad];
    
    self.mapView.mapType = MKMapTypeStandard;
    self.mapView.showsUserLocation = YES;
    [self loadMapViewForSelectedDecal];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"Decal selected in viewDidAppear is: %@", selectedKML);
    [self loadMapViewForSelectedDecal];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    NSLog(@"Decal selected in viewDidAppear is cleared now!: %@", selectedKML);
    [self setDefaultMapView];
}


#pragma mark MKMapViewDelegate

- (MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id <MKOverlay>)overlay
{
    return [kmlParser viewForOverlay:overlay];
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation
{
    return [kmlParser viewForAnnotation:annotation];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"FilterSegue"]) {
        
        UINavigationController *navigationController = segue.destinationViewController;
        UFDecalTableViewController *uFLDecalTableViewController = [navigationController viewControllers][0];
        uFLDecalTableViewController.delegate = self;
    }
}


- (void)uFLDecalTableViewControllerDidCancel:(UFDecalTableViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)setCurrentKmlObject:(UFKMLObject *)kmlObject
{
    self.currentKMLObject = kmlObject;
}

//This will allow the user to rotate this view between orienations, and the controls will re-layout according ti the autosizing attributes setup in Interface Builder.
-(BOOL)shouldAutorotate{
    return YES;
}


//- (IBAction)getLocation {
//    //mapView.showsUserLocation = YES;
//    map.showsUserLocation = YES;
//}

@end
