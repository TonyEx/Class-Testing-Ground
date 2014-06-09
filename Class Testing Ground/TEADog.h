//
//  TEADog.h
//  Class Testing Ground
//
//  Created by Tony Angelo on 6/8/14.
//  Copyright (c) 2014 Tony Angelo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TEADog : NSObject {
	NSString *_name;
}

//@property (strong, nonatomic) NSString *name;

-(void) setName:(NSString *)name;
-(NSString *)name;

@end
