package cs.db.house.Repository;

import cs.db.house.Model.Option;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class OptionRepository {

    @Autowired
    private SqlSession sqlSession;

    public List<Option> findAll() {
        return sqlSession.selectList("findAllOptions");
    }
}
