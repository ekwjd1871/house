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

@RestController
@RequestMapping("/house")
public class HouseRestController {
    private static final Logger logger = LoggerFactory.getLogger(HouseRestController.class);

    @Autowired
    private HouseService service;

    @RequestMapping(value = "/houses", method = RequestMethod.GET)
    public List<House> selectAll() {
        return service.getAllHouse();
    }

    @RequestMapping(value = "/{houseId}", method = RequestMethod.GET)
    public House selectHouse(@PathVariable int houseId) {
        logger.info("HouseId para : {}", houseId);
        return service.getHouse(houseId);
    }
}
