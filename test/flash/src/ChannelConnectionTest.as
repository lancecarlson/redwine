package src {
  import mx.messaging.channels.*;
  import mx.messaging.*;
  import mx.rpc.remoting.*;
  
  import net.digitalprimates.fluint.tests.TestCase;

  public class ChannelConnectionTest extends TestCase {

    override protected function setUp():void {

    }
    
    public function test():void {
      var myRemoteObject:RemoteObject = new RemoteObject;
      // Create a ChannelSet.
      var cs:ChannelSet = new ChannelSet();
      // Create a Channel.
      var customChannel:Channel = new AMFChannel("my-polling-amf", "http://localhost:8080/amf");
      // Add the Channel to the ChannelSet.
      cs.addChannel(customChannel);
      // Assign the ChannelSet to a RemoteObject instance.
      myRemoteObject.channelSet = cs;
      myRemoteObject.go();
    }
  }
}