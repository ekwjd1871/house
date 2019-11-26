package cs.db.house.Repository;

import cs.db.house.Model.House;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class HouseRepository {

    @Autowired
    private SqlSession sqlSession;

    public List<House> selectAllHouse() {
        return sqlSession.selectList("findAllHouse");
    }

    public House selectHouseById(int houseId) {
        return sqlSession.selectOne("findHouseById", houseId);
    }

}
