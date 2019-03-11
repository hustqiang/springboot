import com.how2java.springboot.Application;
import com.how2java.springboot.mapper.C123Mapper;
import com.how2java.springboot.pojo.C123;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = Application.class)
public class TestTest {

    @Autowired
    C123Mapper c123Mapper;

    @Test
    public void test(){
        List<C123> c123List= c123Mapper.findAll();
        for (C123 c:c123List) {
            System.out.println(c.getId());
            System.out.println(c.getName());
        }
    }

    @Before
    public void before(){
//        List<C123> c123List = c123Mapper.findAll();
//        for (C123 c:c123List) {
//            c123Mapper.
//        }
    }
}
