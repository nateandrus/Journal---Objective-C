//
//  Entry.m
//  JournalObjectiveC
//
//  Created by Nathan Andrus on 2/11/19.
//  Copyright © 2019 Nathan Andrus. All rights reserved.
//

#import "Entry.h"

@implementation Entry

- (instancetype)initWithTitle:(NSString *)title
                         text:(NSString*)text;
{
    self = [super init];
    if (self) {
        _title = title;
        _text = text;
        _timeStamp = [NSDate date];
    }
    return self;
}

@end
