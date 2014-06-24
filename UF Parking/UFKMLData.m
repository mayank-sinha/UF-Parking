//
//  UFKMLData.m
//  UF Parking
//
//  Created by Mayank on 6/24/14.
//  Copyright (c) 2014 University of Florida. All rights reserved.
//

#import "UFKMLData.h"

@implementation UFKMLData

+ (NSArray *)allKMLs
{
    NSMutableArray *KMLInformation = [@[] mutableCopy];
    
    NSDictionary *allDecalDictionary = @{KML_FILE_NAME : @"allDecal", KML_TITLE : @"All Decals", KML_SUBTITLE : @"Needs to be updated", KML_REFRESH_TIME : @"2014-05-01 12:00:00 -0700"};
    [KMLInformation addObject:allDecalDictionary];
    
    NSDictionary *allRedDecalDictionary = @{KML_FILE_NAME : @"allRed", KML_TITLE : @"All Red Decal", KML_SUBTITLE : @"Needs to be updated", KML_REFRESH_TIME : @"2014-05-01 12:00:00 -0700"};
    [KMLInformation addObject:allRedDecalDictionary];
    
    NSDictionary *redOneDecalDictionary = @{KML_FILE_NAME : @"Red1", KML_TITLE : @"Red 1 Decal", KML_SUBTITLE : @"Eligible for Red and Commuter lots", KML_REFRESH_TIME : @"2014-05-01 12:00:00 -0700"};
    [KMLInformation addObject:redOneDecalDictionary];
    
    NSDictionary *commuterDecalDictionary = @{KML_FILE_NAME : @"commuter", KML_TITLE : @"Commuter Decal", KML_SUBTITLE : @"Needs to be updated", KML_REFRESH_TIME : @"2014-05-01 12:00:00 -0700"};
    [KMLInformation addObject:commuterDecalDictionary];
    
    NSDictionary *brownDecalDictionary = @{KML_FILE_NAME : @"brown", KML_TITLE : @"Brown Decal", KML_SUBTITLE : @"Needs to be updated", KML_REFRESH_TIME : @"2014-05-01 12:00:00 -0700"};
    [KMLInformation addObject:brownDecalDictionary];
    
    NSDictionary *orangeDecalDictionary = @{KML_FILE_NAME : @"orange", KML_TITLE : @"Orange Decal", KML_SUBTITLE : @"Eligible for Orange and Commuter lots", KML_REFRESH_TIME : @"2014-06-01 12:00:00 -0700"};
    [KMLInformation addObject:orangeDecalDictionary];
    
    NSDictionary *blueDecalDictionary = @{KML_FILE_NAME : @"blue", KML_TITLE : @"Blue Decal", KML_SUBTITLE : @"Eligible for Blue and Commuter lots", KML_REFRESH_TIME : @"2014-04-01 12:00:00 -0700"};
    [KMLInformation addObject:blueDecalDictionary];
    
    NSDictionary *gatedDecalDictionary = @{KML_FILE_NAME : @"gated", KML_TITLE : @"Gated Decal", KML_SUBTITLE : @"Needs to be updated", KML_REFRESH_TIME : @"2014-05-01 12:00:00 -0700"};
    [KMLInformation addObject:gatedDecalDictionary];
    
    NSDictionary *visitorParkingDecalDictionary = @{KML_FILE_NAME : @"visitor", KML_TITLE : @"Visitor Parking", KML_SUBTITLE : @"Needs to be updated", KML_REFRESH_TIME : @"2014-05-01 12:00:00 -0700"};
    [KMLInformation addObject:visitorParkingDecalDictionary];
    
    
    return [KMLInformation copy];
}

@end

