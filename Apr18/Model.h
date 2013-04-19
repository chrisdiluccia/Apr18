//
//  Model.h
//  Apr18
//
//  Created by Christopher J Di Luccia on 4/18/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model: NSObject {
	NSArray *tree;
}

//Each item in the Model is identified by an NSIndexPath.
//These methoods take an NSIndexPath and return informatioon about that item.

- (NSString *) name: (NSIndexPath *) indexPath;
- (NSUInteger) numberOfRows: (NSIndexPath *) indexPath;
- (NSString *) text: (NSIndexPath *) indexPath row: (NSUInteger) row;
@end
