package cs.db.house;

import cs.db.house.Model.Str;
import cs.db.house.Repository.StrRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.sql.DataSource;
import java.sql.SQLException;

import static org.hamcrest.Matchers.is;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertThat;

@RunWith(SpringRunner.class)
@SpringBootTest
public class Database {
    private static final Logger logger = LoggerFactory.getLogger(Database.class);

    /**
     * Datasource - DB 와 연결 시 사용되는 리소스 객체 (자원)
     */
    @Autowired
    private DataSource dataSource;

    @Autowired
    private StrRepository strRepository;

    @Test
    public void dataSource() throws SQLException {
        logger.debug("DataSource : {}", dataSource);
        assertNotNull(dataSource.getConnection());
    }

    @Test
    public void crud() {
        Str str = new Str("스트링");
        int row = 0;

        row = strRepository.createStr(str);

        assertThat(row, is(1));
    }
}