CURRENT_DIR = File.join(File.dirname(__FILE__))
BUILD_XML = CURRENT_DIR + "/test/flash/Test.mxml"
OUTPUT = File.join(CURRENT_DIR, %w(public Test.swf))
LIB_PATH = File.join(CURRENT_DIR, %w(test flash lib))
SOURCE_PATH = File.join(CURRENT_DIR, "test/flash")

namespace :flex do  
  desc "Build & Preview"
  task :build do
    build_mxml = "Test.mxml"
    output = "Test.swf"
    
    cmd = "mxmlc"
    cmd << " -source-path #{SOURCE_PATH}"
    cmd << " -output #{OUTPUT}"
    cmd << " -library-path+=#{LIB_PATH}"
    cmd << " -- #{BUILD_XML}"
    
    sh cmd
    system("open", "http://localhost:8080/")
  end
end