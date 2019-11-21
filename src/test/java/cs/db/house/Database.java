package cs.db.house;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.sql.DataSource;
import java.sql.SQLException;

import static org.junit.Assert.assertNotNull;

@RunWith(SpringRunner.class)
@SpringBootTest
public class Database {
    private static final Logger logger = LoggerFactory.getLogger(Database.class);

    /**
     * Datasource - DB 와 연결 시 사용되는 리소스 객체 (자원)
     */
    @Autowired
    private DataSource dataSource;

    @Test
    public void dataSource() throws SQLException {
        logger.debug("DataSource : {}", dataSource);
        assertNotNull(dataSource.getConnection());
    }
}