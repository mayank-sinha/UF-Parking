//
//  UFKMLObject.m
//  UF Parking
//
//  Created by Mayank on 6/24/14.
//  Copyright (c) 2014 University of Florida. All rights reserved.
//

#import "UFKMLObject.h"
#import "UFKMLData.h"

@implementation UFKMLObject

-(id)init
{
    self = [self initWithData:nil];
    return self;
}

-(id)initWithData:(NSDictionary *)data
{
    self = [super init];
    
    self.title = data[KML_TITLE];
    self.subtitle = data[KML_SUBTITLE];
    self.file_name = data[KML_FILE_NAME];
    self.refresh_time = data[KML_REFRESH_TIME];
    //self.image_decal = data[DECAL_IMAGE];
    
    return self;
}

@end
