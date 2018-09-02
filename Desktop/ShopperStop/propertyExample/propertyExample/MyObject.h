//
//  MyObject.h
//  propertyExample
//
//  Created by Jigar Jarsania on 8/26/18.
//  Copyright © 2018 Sneha Jarsania. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyObject : NSObject
@property (nonatomic,weak)NSString *name;
-(id)initWithname : (NSString *)str;

@end
