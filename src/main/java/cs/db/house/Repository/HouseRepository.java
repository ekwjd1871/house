package cs.db.house.Repository;

import cs.db.house.Model.FilterDto;
import cs.db.house.Model.House;
import cs.db.house.Model.Option;
import cs.db.house.Model.Pagination;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class HouseRepository {
    private static final Logger logger = LoggerFactory.getLogger(HouseRepository.class);

    @Autowired
    private SqlSession sqlSession;

    public List<House> selectAllHouse(Pagination pagination) {
        logger.error("1. {}", pagination.getStartList());
        logger.error("2. {}", pagination.getListSize());

        return sqlSession.selectList("findAllHouse", pagination);
    }

    public House selectHouseById(int houseId) {
        return sqlSession.selectOne("findHouseById", houseId);
    }

    public int getHouseCount() {
        return sqlSession.selectOne("getHouseAllCount");
    }

    public List<House> getSpecifiedHouses(Map<String, Object> map) {
        return sqlSession.selectList("getSpecifiedHouses", map);
    }

    public int getSpecifiedHouseCount(FilterDto filter) {
        logger.error("뭐고.. {}", filter);
        return sqlSession.selectOne("getSpecifiedHouseCount", filter);
    }

    public Option selectOptionById(int optionId) {
        return sqlSession.selectOne("getOptionById", optionId);
    }
}
