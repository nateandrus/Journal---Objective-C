//
//  EntryController.h
//  JournalObjectiveC
//
//  Created by Nathan Andrus on 2/11/19.
//  Copyright © 2019 Nathan Andrus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"


@interface EntryController : NSObject



@property(nonatomic, readonly) NSMutableArray *entries;

+(EntryController *) sharedInstance;

- (void) addEntry:(Entry *)entry;

- (void) removeEntry:(Entry *)entry;

- (void)updateWithEntry:(Entry *)entry:(NSString *)title:(NSString*)text;


@end

