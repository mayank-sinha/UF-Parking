//
//  UFKMLObject.h
//  UF Parking
//
//  Created by Mayank on 6/24/14.
//  Copyright (c) 2014 University of Florida. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UFKMLObject : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *subtitle;
@property (strong, nonatomic) NSString *file_name;
@property (strong, nonatomic) NSString *refresh_time;
//@property (strong, nonatomic) NSString *image_decal;

-(id)initWithData:(NSDictionary *)data;

@end
