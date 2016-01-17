//
//  main.m
//  WhatATool
//
//  Created by Benjamin A Burgess on 1/4/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

void logBreak();
void PrintPathInfo();
void PrintProcessInfo();
void PrintBookmarkInfo();
void PrintClassInfo();
void PrintIntrospectionInfo();

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        PrintPathInfo();
        PrintProcessInfo();
        PrintBookmarkInfo();
        PrintIntrospectionInfo();  // Section 4
    }
    return 0;
}


// sample function for one section, use a similar function per section
void PrintPathInfo() {
    NSString *path = @"~";
    path = [path stringByExpandingTildeInPath];
    
    NSLog(@"%@", [[@"My home folder is at '" stringByAppendingString:path] stringByAppendingString:@"'"]);
    
    NSArray *pathComponent = [path pathComponents];
    
    for (NSString *item in pathComponent) {
        NSLog(@"%@", item);
        }
    
}

void PrintProcessInfo() {
    NSProcessInfo *pInfo;
    NSLog(@"\nProcess Name: %@ \nProcess ID: %d", [pInfo processName], [pInfo processIdentifier]);
}

void PrintBookmarkInfo() {
    
}

void PrintIntrospectionInfo() {
    
}
