#import <AVFoundation/AVFoundation.h>
#import <UIKit/UIKit.h>

#include <Foundation/Foundation.h>


@class TensorBridge;

@protocol TensorDelegate <NSObject>
-(void)tensorLabelListUpdated:(NSDictionary*)devices;
@end

@interface TensorBridge : NSObject
{
    
//    std::unique_ptr<tensorflow::Session> tf_session;
//    std::unique_ptr<tensorflow::MemmappedEnv> tf_memmapped_env;
//    std::vector<std::string> labels;    
//    NSMutableDictionary *oldPredictionValues;
    
}
@property (assign) id <TensorDelegate> delegate;
- (void)runCNNOnFrame:(CVPixelBufferRef)pixelBuffer;
- (void)loadModel;

@end
