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
    
    NSDictionary *allDecalDictionary = @{KML_FILE_NAME : @"allDecal", KML_TITLE : @"       All Decal", KML_SUBTITLE : @"          Needs to be updated", KML_REFRESH_TIME : @"2014-05-01 12:00:00 -0700"};
    [KMLInformation addObject:allDecalDictionary];
    
    NSDictionary *allDecalExceptParkAndRideDictionary = @{KML_FILE_NAME : @"allDecal", KML_TITLE : @"       All Decal Except Park & Ride", KML_SUBTITLE : @"          Needs to be updated", KML_REFRESH_TIME : @"2014-05-01 12:00:00 -0700"};
    [KMLInformation addObject:allDecalExceptParkAndRideDictionary];
    
    NSDictionary *allRedDecalDictionary = @{KML_FILE_NAME : @"allRed", KML_TITLE : @"       All Red Decal", KML_SUBTITLE : @"          Needs to be updated", KML_REFRESH_TIME : @"2014-05-01 12:00:00 -0700"};
    [KMLInformation addObject:allRedDecalDictionary];
    
    NSDictionary *blueDecalDictionary = @{KML_FILE_NAME : @"blue", KML_TITLE : @"       Blue Decal", KML_SUBTITLE : @"          Eligible for Blue and Commuter lots", KML_REFRESH_TIME : @"2014-04-01 12:00:00 -0700"};
    [KMLInformation addObject:blueDecalDictionary];
    
    NSDictionary *brownDecalDictionary = @{KML_FILE_NAME : @"brown", KML_TITLE : @"       Brown Decal", KML_SUBTITLE : @"          Needs to be updated", KML_REFRESH_TIME : @"2014-05-01 12:00:00 -0700"};
    [KMLInformation addObject:brownDecalDictionary];
    
    NSDictionary *commuterDecalDictionary = @{KML_FILE_NAME : @"commuter", KML_TITLE : @"       Commuter Decal", KML_SUBTITLE : @"          Needs to be updated", KML_REFRESH_TIME : @"2014-05-01 12:00:00 -0700"};
    [KMLInformation addObject:commuterDecalDictionary];
    
    NSDictionary *gatedDecalDictionary = @{KML_FILE_NAME : @"gated", KML_TITLE : @"       Gated Decal", KML_SUBTITLE : @"          Needs to be updated", KML_REFRESH_TIME : @"2014-05-01 12:00:00 -0700"};
    [KMLInformation addObject:gatedDecalDictionary];
    
    NSDictionary *medicalResidentDecalDictionary = @{KML_FILE_NAME : @"gated", KML_TITLE : @"       Medical Resident Decal", KML_SUBTITLE : @"          Needs to be updated", KML_REFRESH_TIME : @"2014-05-01 12:00:00 -0700"};
    [KMLInformation addObject:medicalResidentDecalDictionary];
    
    NSDictionary *orangeDecalDictionary = @{KML_FILE_NAME : @"orange", KML_TITLE : @"       Orange Decal", KML_SUBTITLE : @"          Eligible for Orange and Commuter lots", KML_REFRESH_TIME : @"2014-06-01 12:00:00 -0700"};
    [KMLInformation addObject:orangeDecalDictionary];
    
    NSDictionary *redOneDecalDictionary = @{KML_FILE_NAME : @"Red1", KML_TITLE : @"       Red 1 Decal", KML_SUBTITLE : @"          Eligible for Red and Commuter lots", KML_REFRESH_TIME : @"2014-05-01 12:00:00 -0700"};
    [KMLInformation addObject:redOneDecalDictionary];
    
    NSDictionary *serviceVehicleOnlyDictionary = @{KML_FILE_NAME : @"orange", KML_TITLE : @"       Service Vehicle Only", KML_SUBTITLE : @"          Eligible for Orange and Commuter lots", KML_REFRESH_TIME : @"2014-06-01 12:00:00 -0700"};
    [KMLInformation addObject:serviceVehicleOnlyDictionary];
    
    NSDictionary *visitorParkingDecalDictionary = @{KML_FILE_NAME : @"visitor", KML_TITLE : @"       Visitor Parking", KML_SUBTITLE : @"          Needs to be updated", KML_REFRESH_TIME : @"2014-05-01 12:00:00 -0700"};
    [KMLInformation addObject:visitorParkingDecalDictionary];
    
    NSDictionary *carpoolDecalDictionary = @{KML_FILE_NAME : @"visitor", KML_TITLE : @"       Carpool Decals", KML_SUBTITLE : @"          Needs to be updated", KML_REFRESH_TIME : @"2014-05-01 12:00:00 -0700"};
    [KMLInformation addObject:carpoolDecalDictionary];
    
    NSDictionary *disabledParkingDictionary = @{KML_FILE_NAME : @"visitor", KML_TITLE : @"       Disabled Parking", KML_SUBTITLE : @"          Needs to be updated", KML_REFRESH_TIME : @"2014-05-01 12:00:00 -0700"};
    [KMLInformation addObject:disabledParkingDictionary];
    
    NSDictionary *ParkingMetersDictionary = @{KML_FILE_NAME : @"visitor", KML_TITLE : @"       Parking Meters", KML_SUBTITLE : @"          Needs to be updated", KML_REFRESH_TIME : @"2014-05-01 12:00:00 -0700"};
    [KMLInformation addObject:ParkingMetersDictionary];
    
    NSDictionary *scooterMotorcycleZoneDictionary = @{KML_FILE_NAME : @"visitor", KML_TITLE : @"       Scooter/Motorcycle Zone", KML_SUBTITLE : @"          Needs to be updated", KML_REFRESH_TIME : @"2014-05-01 12:00:00 -0700"};
    [KMLInformation addObject:scooterMotorcycleZoneDictionary];
    
    NSDictionary *zipCarsDictionary = @{KML_FILE_NAME : @"visitor", KML_TITLE : @"       Zip Cars", KML_SUBTITLE : @"          Needs to be updated", KML_REFRESH_TIME : @"2014-05-01 12:00:00 -0700"};
    [KMLInformation addObject:zipCarsDictionary];
    
    return [KMLInformation copy];
}

@end

