//
//  Notification.m
//  PureMVC_ObjectiveC
//
//  PureMVC Port to ObjectiveC by Brian Knorr <brian.knorr@puremvc.org>
//  PureMVC - Copyright(c) 2006-2008 Futurescale, Inc., Some rights reserved.
//

#import "Notification.h"


@implementation Notification

@synthesize name, body, type;

+(id)withName:(NSString *)name {
	return [[[self alloc] initWithName:name body:nil type:nil] autorelease];
}

+(id)withName:(NSString *)name body:(id)body {
	return [[[self alloc] initWithName:name body:body type:nil] autorelease];
}

+(id)withName:(NSString *)name body:(id)body type:(NSString *)type {
	return [[[self alloc] initWithName:name body:body type:type] autorelease];
}

+(id)withName:(NSString *)name type:(NSString *)type {
	return [[[self alloc] initWithName:name body:nil type:type] autorelease];
}

-(id)initWithName:(NSString *)_name body:(id)_body type:(NSString *)_type {
	if (self = [super init]) {
		self.name = _name;
		self.body = _body;
		self.type = _type;
	}
	return self;
}

-(NSString *)toString {
	return [NSString stringWithFormat:@"Notification Name: %@ \nBody:%@ \nType:%@", name, body, type];
}

-(void)dealloc {
	self.name = nil;
	self.body = nil;
	self.type = nil;
	[super dealloc];
}

@end
