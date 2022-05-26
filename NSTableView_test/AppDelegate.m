//
//  AppDelegate.m
//  NSTableView_test
//
//  Created by Gregory Casamento on 5/16/22.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property IBOutlet NSWindow *window;
@property IBOutlet NSTableView *table;

@end

@implementation AppDelegate

- (void) handleNotification: (NSNotification *)n
{
    NSLog(@"%@",n);
    NSIndexSet *s = [self.table selectedRowIndexes];
    
    NSLog(@"%@",s);
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleNotification:)
                                                 name:NSTableViewSelectionDidChangeNotification
                                               object:nil];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}

// Table Data Source
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return 3;
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(nullable NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSArray *array = [NSArray arrayWithObjects:@"One", @"Two", @"Three", nil];
    return [array objectAtIndex: row];
}

@end
