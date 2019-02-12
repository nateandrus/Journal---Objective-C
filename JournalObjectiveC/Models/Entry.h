//
//  Entry.h
//  JournalObjectiveC
//
//  Created by Nathan Andrus on 2/11/19.
//  Copyright © 2019 Nathan Andrus. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Entry : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString* text;
@property (nonatomic, copy) NSDate* timeStamp;

- (instancetype)initWithTitle:(NSString *)title
                         text:(NSString*)text;

@end

NS_ASSUME_NONNULL_END
