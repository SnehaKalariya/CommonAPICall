//
//  MyObject.m
//  propertyExample
//
//  Created by Jigar Jarsania on 8/26/18.
//  Copyright © 2018 Sneha Jarsania. All rights reserved.
//

#import "MyObject.h"

@implementation MyObject
-(id)initWithname : (NSString *)str {
    if (self = [super init]){
        self.name = str;
    }
    return self;
}
@end
