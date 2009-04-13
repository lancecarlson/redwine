package src {
  import net.digitalprimates.fluint.tests.TestSuite;

  public class FrameworkSuite extends TestSuite {
    public function FrameworkSuite() {
      addTestCase(new ChannelConnectionTest());
    }
  }
}