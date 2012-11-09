//
//  Cell.m
//  DNAProject
//
//  Created by Alex Nureev on 11/8/12.
//  Copyright (c) 2012 Alex Nureev. All rights reserved.
//

#import "Cell.h"

@implementation Cell
	
-(id) init {
    
    self = [super init];
    if (self) {
        _DNA = [NSMutableArray arrayWithCapacity:100];
        NSArray* symbols = [NSArray arrayWithObjects:
                            @"A",
                            @"T",
                            @"G",
                            @"C",
                            nil];
        for (int i = 0; i < 100; i++) {
            [_DNA addObject:[symbols getRandomObject]];
        }
    }
    return self;
}

-(NSMutableArray*) getDNA {
    return _DNA;
}

-(int) hummingDistance:(Cell*)c {
    int n = 0;
    for (int i=0; i < 100; i++) {
        if ([[self getDNA] objectAtIndex:i]  != [[c getDNA] objectAtIndex:i]) n++;
    }
    return n;
}
@end
