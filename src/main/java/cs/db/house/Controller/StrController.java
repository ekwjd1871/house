package cs.db.house.Controller;

import cs.db.house.Service.StrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class StrController {

    @Autowired
    private StrService strService;
}
