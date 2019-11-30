package cs.db.house;

import cs.db.house.Model.House;
import cs.db.house.Model.Option;
import cs.db.house.Model.Str;
import cs.db.house.Repository.HouseRepository;
import cs.db.house.Repository.OptionRepository;
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
import java.util.ArrayList;
import java.util.List;

import static org.hamcrest.Matchers.is;
import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DatabaseTest {
    private static final Logger logger = LoggerFactory.getLogger(DatabaseTest.class);

    /**
     * Datasource - DB 와 연결 시 사용되는 리소스 객체 (자원)
     */
    @Autowired
    private DataSource dataSource;

    @Autowired
    private StrRepository strRepository;

    @Autowired
    private HouseRepository houseRepository;

    @Autowired
    private OptionRepository optionRepository;

    @Test
    public void dataSource() throws SQLException {
        logger.debug("DataSource : {}", dataSource);
        assertNotNull(dataSource.getConnection());
    }

    @Test
    public void testCrud() {
        Str str = new Str("스트링");
        int row = 0;

        row = strRepository.createStr(str);

        assertThat(row, is(1));

        row = 0;

        row = strRepository.deleteStr(1);

        assertThat(row, is(1));
    }

    @Test
    public void houseCrud() {
//        List<House> houses = houseRepository.selectAllHouse();
//        logger.info("houses ? {}", houses);
//
//        assertFalse(houses.isEmpty());
//
//        House house = houseRepository.selectHouseById(1);
//        logger.info("house ? {}", house);
//
//        assertNotNull(house);
    }

    @Test
    public void optionCrud() {
        List<Option> optionList;

        optionList = optionRepository.findAll();

        for(Option option : optionList) {
            System.out.println("Option : " + option);
        }
    }

}