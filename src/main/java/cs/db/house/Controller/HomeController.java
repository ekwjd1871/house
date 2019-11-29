package cs.db.house.Controller;

import cs.db.house.Model.House;
import cs.db.house.Service.HouseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value = "/")
public class HomeController {
    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @Autowired
    private HouseService service;

    @RequestMapping(value = "/")
    public ModelAndView index() {
        logger.info("index() call");

        ModelAndView mv = new ModelAndView();
        List<House> houseList = service.getAllHouse();

        mv.addObject("houseList", houseList);
        mv.addObject("obj", "테스트 오브젝트");
        mv.setViewName("/index");
        logger.info("뭐지 : {}", mv);

        return mv;
    }
}
