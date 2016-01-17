//
//  PolygonShape.h
//  WhatATool
//
//  Created by Benjamin A Burgess on 1/16/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#ifndef PolygonShape_h
#define PolygonShape_h

#import <Cocoa/Cocoa.h>


@interface PolygonShape : NSObject {
    
    int numberOfSides;
    int minimumNumberOfSides;
    int maximumNumberOfSides;
    
}

@property int numberOfSides;
@property int minimumNumberOfSides;
@property int maximumNumberOfSides;
@property (readonly) float angleInDegrees;
@property (readonly) float angleInRadians;
@property (readonly) NSString *name;

- (id)initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)min maximumNumberOfSides:(int)max;
- (void)description;

@end

#endif /* PolygonShape_h */
