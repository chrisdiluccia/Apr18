//
//  TableViewController.h
//  Apr18
//
//  Created by Christopher J Di Luccia on 4/18/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Model;

@interface TableViewController: UITableViewController {
	Model *model;
	NSIndexPath *indexPath;	//indicates currently displayed tree
}

- (id) initWithStyle: (UITableViewStyle) style
               model: (Model *) m
           indexPath: (NSIndexPath *) p;
@end
