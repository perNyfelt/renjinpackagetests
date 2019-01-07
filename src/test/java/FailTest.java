import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import static junit.framework.TestCase.assertTrue;

public class FailTest {

  static {
    System.setProperty("org.apache.commons.logging.simplelog.defaultlog", "warn");
    java.util.logging.Logger utilLog = java.util.logging.LogManager.getLogManager()
        .getLogger(org.apache.commons.vfs2.VfsLog.class.getName());
    if (utilLog != null) {
      utilLog.setLevel(java.util.logging.Level.WARNING);
    }
  }

  Logger log = LoggerFactory.getLogger(FailTest.class);

  @Test
  public void testFailing() {
    log.info("Testing something that fails");
    assertTrue(false);
  }
}
