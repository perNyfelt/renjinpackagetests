//import org.apache.log4j.Level;
import org.junit.Test;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;

import static junit.framework.TestCase.assertTrue;

public class FailTest {

  /*
  static {
    System.setProperty("org.apache.commons.logging.simplelog.defaultlog", "warn");
    java.util.logging.Logger utilLog = java.util.logging.LogManager.getLogManager()
        .getLogger("org.apache.commons.vfs2");
    if (utilLog != null) {
      utilLog.setLevel(java.util.logging.Level.WARNING);
    }
    org.apache.log4j.Logger log4jLog = org.apache.log4j.LogManager.getLogger(org.apache.commons.vfs2.impl.DefaultFileSystemManager.class);
    log4jLog.setLevel(Level.WARN);

  }
  */

  //Logger log = LoggerFactory.getLogger(FailTest.class);

  @Test
  public void testFailing() {
    System.out.println("Testing something that fails");
    assertTrue(false);
  }
}
