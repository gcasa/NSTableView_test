//
//  AppDelegate.h
//  NSTableView_test
//
//  Created by Gregory Casamento on 5/16/22.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate, NSTableViewDataSource, NSTableViewDelegate>
{
  NSWindow *window;
  NSTableView *table;
}

@end

