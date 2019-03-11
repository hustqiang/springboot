import com.how2java.springboot.pojo.Category;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.InputStream;
import java.util.List;

public class TestMybatis {
    public  static void main(String[] args) throws Exception{
//        String resource = "mybatis-config.xml";
//        InputStream is = Resources.getResourceAsStream(resource);
//        SqlSessionFactory sqlsessionFactory = new SqlSessionFactoryBuilder().build(is);
//        SqlSession sqlSession = sqlsessionFactory.openSession();
//        List<Category> cs =sqlSession.selectList("listCategory");
//        for (Category c: cs) {
//            System.out.println(c.getName());
//        }
    }
}
