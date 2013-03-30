//
//  BackgroundLayer.m
//  SpaceViking
//
//  Created by Fred Sharples on 3/30/13.
//  Copyright (c) 2013 Fred Sharples. All rights reserved.
//

#import "BackgroundLayer.h"

@implementation BackgroundLayer

-(id) init
{
	if( (self=[super init])) {
        
		// ask director for the window size
		CGSize size = [[CCDirector sharedDirector] winSize];
        
		CCSprite *backgroundImage;
		
		if( UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad ) {
			backgroundImage = [CCSprite spriteWithFile:@"background.png"];
		} else {
			backgroundImage = [CCSprite spriteWithFile:@"backgroundiPhone.png"];
		}
		backgroundImage.position = ccp(size.width/2, size.height/2);
        
		// add the label as a child to this Layer
		[self addChild: backgroundImage z:0 tag:0];	
	}
	
	return self;
}


@end
