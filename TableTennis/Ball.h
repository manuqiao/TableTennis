//
//  Ball.h
//  TableTennis
//
//  Created by qiaorujia on 8/23/13.
//  Copyright 2013 qiaorujia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "Box2D.h"

#import "CCPhysicsSprite.h"

@interface Ball : CCPhysicsSprite {
    
}
- (id)initWithWorld:(b2World *)world;
@end
