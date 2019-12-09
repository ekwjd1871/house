package cs.db.house.Controller;

import cs.db.house.Model.House;
import cs.db.house.Service.HouseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * Flow)
 *  1. URL : /house 로 요청 시, 이 컨트롤러 클래스에서 요청을 받는다.
 *  2. /house/houses 로 요청 시, selectAll() 메소드가 Call 된다.
 *  3. /house/{houseId} 로 요청 시, selectHouse() 메소드가 Call 된다.
 *
 *  URL 은 해당 자원의 경로임
 *
 *  따라서, API 는 특정 URL로 들어온 요청을 처리해서 해당 데이터를 반환하거나 어떤 처리 등을 담당함
 */
@RestController
@RequestMapping("/house")
public class HouseRestController {
    private static final Logger logger = LoggerFactory.getLogger(HouseRestController.class);

    @Autowired
    private HouseService service;

    @RequestMapping(value = "/{houseId}", method = RequestMethod.GET)
    public Map<String, Object> selectHouse(@PathVariable int houseId) {
        logger.info("HouseId para : {}", houseId);

        return service.getHouse(houseId);
    }
}
