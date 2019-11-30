package cs.db.house.Controller;

import cs.db.house.Model.House;
import cs.db.house.Model.Pagination;
import cs.db.house.Service.HouseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value = "/")
public class HomeController {
    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @Autowired
    private HouseService service;

    @RequestMapping(value = "/")
    public ModelAndView index(@RequestParam(required = false, defaultValue = "1") int page,
            @RequestParam(required = false, defaultValue = "1") int range) {
        ModelAndView mv = new ModelAndView();

        int listCnt = service.getHouseCount();
        Pagination pagination = new Pagination();
        pagination.pageInfo(page, range, listCnt);

        List<House> houseList = service.getAllHouse(pagination);

        mv.addObject("houseList", houseList);
        mv.addObject("pagination", pagination);
        mv.setViewName("/index");

        return mv;
    }
}
