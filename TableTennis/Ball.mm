//
//  Ball.m
//  TableTennis
//
//  Created by qiaorujia on 8/23/13.
//  Copyright 2013 qiaorujia. All rights reserved.
//

#import "Ball.h"

@implementation Ball

- (id)initWithWorld:(b2World *)world
{
    CGPoint position = CGPointMake(SCREEN_WIDTH / 2, SCREEN_HEIGHT / 2);
    self = [super initWithFile:@"blocks.png" rect:CGRectMake(position.x, position.y, 32, 32)];
    if (self) {
        
        // Define the dynamic body.
        //Set up a 1m squared box in the physics world
        b2BodyDef bodyDef;
        bodyDef.type = b2_dynamicBody;
        bodyDef.position.Set(position.x/PTM_RATIO, position.y/PTM_RATIO);
        b2Body *body = world->CreateBody(&bodyDef);
        
        // Define another box shape for our dynamic body.
        b2PolygonShape dynamicBox;
        dynamicBox.SetAsBox(.5f, .5f);//These are mid points for our 1m box
        
        // Define the dynamic body fixture.
        b2FixtureDef fixtureDef;
        fixtureDef.shape = &dynamicBox;
        fixtureDef.density = 1.0f;
        fixtureDef.friction = 0.3f;
        body->CreateFixture(&fixtureDef);
        
        [self setPTMRatio:PTM_RATIO];
        [self setB2Body:body];
        [self setPosition: ccp(position.x, position.y)];
    }
    return self;
}
@end
