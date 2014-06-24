//
//  UFKMLData.h
//  UF Parking
//
//  Created by Mayank on 6/24/14.
//  Copyright (c) 2014 University of Florida. All rights reserved.
//

#import <Foundation/Foundation.h>

#define KML_FILE_NAME @"Name of KML file"
#define KML_TITLE @"Display title of KML file"
#define KML_SUBTITLE @"Display subtitle of KML file"
#define KML_REFRESH_TIME @"Time the KML was last refreshed"
#define DECAL_IMAGE @"Display image for the decal"

@interface UFKMLData : NSObject

+ (NSArray *)allKMLs; // Returns an array of NSDictionaries

@end