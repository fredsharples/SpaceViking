//
//  GameplayLayer.h
//  SpaceViking
//
//  Created by Fred Sharples on 3/30/13.
//  Copyright (c) 2013 Fred Sharples. All rights reserved.
//

#import "cocos2d.h"
#import <Foundation/Foundation.h>
#import "SneakyJoystick.h"
#import "SneakyButton.h"
#import "SneakyButtonSkinnedBase.h"
#import "SneakyJoystickSkinnedBase.h"



@interface GameplayLayer : CCLayer{
  CCSprite *vikingSprite;
    SneakyJoystick *leftJoystick;
    SneakyButton *jumpButton;
    SneakyButton *attackButton;
}

@end
