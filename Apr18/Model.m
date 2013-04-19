//
//  Model.m
//  Apr18
//
//  Created by Christopher J Di Luccia on 4/18/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import "Model.h"

#define BEGIN [NSArray arrayWithObjects:
#define END , nil]

@implementation Model

- (id) init {
	self = [super init];
	if (self) {
		tree =
        BEGIN @"iPhone",
        BEGIN @"Settings",
        BEGIN @"Bluetooth"
        END,
        BEGIN @"General"
        END,
        BEGIN @"Privacy"
        END,
        BEGIN @"Maps"
        END,
        BEGIN @"Safari"
        END,
        BEGIN @"Photos & Camera"
        END,
        BEGIN @"Twitter"
        END,
        BEGIN @"Facebook"
        END
        END
        END;
    }
    
	return self;
}


//Return the tree to which the index path leads.

- (NSArray *) tree: (NSIndexPath *) indexPath
{
	NSArray *a = tree;
    
	for (NSUInteger p = 0; p < indexPath.length; ++p) {
		NSUInteger i = [indexPath indexAtPosition: p];
		a = [a objectAtIndex: i + 1];
	}
    
	return a;
}

//Return the name of the tree to which the indexPath leads.

- (NSString *) name: (NSIndexPath *) indexPath
{
	NSArray *a = [self tree: indexPath];
	return [a objectAtIndex: 0];
}

//Return the number of subtrees of the tree to which the indexPath leads.

- (NSUInteger) numberOfRows: (NSIndexPath *) indexPath
{
	NSArray *a = [self tree: indexPath];
	return a.count - 1;
}

//Return the line of text that should go in the specified row
//of the tree to which the indexPath leads.

- (NSString *) text: (NSIndexPath *) indexPath row: (NSUInteger) row
{
	indexPath = [indexPath indexPathByAddingIndex: row];
	return [self name: indexPath];
}

@end
