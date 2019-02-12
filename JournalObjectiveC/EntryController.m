//
//  EntryController.m
//  JournalObjectiveC
//
//  Created by Nathan Andrus on 2/11/19.
//  Copyright © 2019 Nathan Andrus. All rights reserved.
//

#import "EntryController.h"
#import "Entry.h"

@interface EntryController()

@property (nonatomic, strong, readwrite) NSMutableArray *entries;

@end

@implementation EntryController

- (void)addEntry:(Entry*)entry
{
    [_entries addObject: entry];
    
}

- (void)removeEntry:(Entry*)entry
{
    [self.entries removeObject: entry];
}

- (void)updateWithEntry:(Entry *)entry:(NSString *)title:(NSString*)text;
{
    entry.title = title;
    entry.text = text;
}



+ (EntryController *)sharedInstance {
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [EntryController new];
    });
    return sharedInstance;
}

-(instancetype) init
{
    self = [super init];
    if (self) {
        _entries = [NSMutableArray array];
    }
    return self;
}



@end
