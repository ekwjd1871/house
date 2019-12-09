package cs.db.house.Controller;

import cs.db.house.Model.FilterDto;
import cs.db.house.Model.House;
import cs.db.house.Model.Pagination;
import cs.db.house.Service.HouseService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/")
public class HomeController {
    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @Autowired
    private HouseService service;

    @RequestMapping(value = "/")
    public ModelAndView index(HttpServletRequest request, @RequestParam(required = false, defaultValue = "1") int page,
            @RequestParam(required = false, defaultValue = "1") int range) {

        ModelAndView mv = new ModelAndView();

        String name = request.getParameter("name");
        String type = request.getParameter("type");
        String structure = request.getParameter("structure");
        String minDeposit = request.getParameter("minDeposit");
        String maxDeposit = request.getParameter("maxDeposit");
        String minMonthlyRent = request.getParameter("minMonthlyRent");
        String maxMonthlyRent = request.getParameter("maxMonthlyRent");

        FilterDto filter = new FilterDto(name, type, structure, minDeposit, maxDeposit, minMonthlyRent, maxMonthlyRent);
        logger.warn("filter : {}", filter);

        Map<String, Object> objectMap = service.list(filter, page, range);

        List<House> houses = (List<House>) objectMap.get("houseList");

        mv.addObject("houseList", objectMap.get("houseList"));
        mv.addObject("pagination", objectMap.get("pagination"));
        mv.addObject("isFilter", objectMap.get("isFilter"));
        mv.addObject("filter", filter);

        logger.warn("size ? {}", houses.size());

        mv.setViewName("/index");

        return mv;
    }

    @RequestMapping(value = "/home")
    public String home() {
        return "home";
    }
}
