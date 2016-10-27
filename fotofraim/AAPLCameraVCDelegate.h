//
//  Header.h
//  fotofraim
//
//  Created by Paul Defilippi on 10/23/16.
//  Copyright © 2016 Paul Defilippi. All rights reserved.
//

#ifndef Header_h
#define Header_h

@protocol AAPLCameraVCDelegate <NSObject>

-(void)shouldEnableRecordUI:(BOOL)enable;
-(void)shouldEnableCameraUI:(BOOL)enable;
-(void)canStartRecording;
-(void)recordingHasStarted;
//-(void)videoRecordingComplete:(NSURL*)videoURL;
//-(void)videoRecordingFailed;
//-(void)snapshotTaken:(NSData*)snapshotData;
//-(void)snapshotFailed;

@end


#endif /* Header_h */
