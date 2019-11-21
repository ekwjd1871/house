package cs.db.house.Repository;

import cs.db.house.Model.Str;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StrRepository {

    @Autowired
    private SqlSession sqlSession;

    public int createStr(Str st) {
        return sqlSession.insert("insertStr", st);
    }
}