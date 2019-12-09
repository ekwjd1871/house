package cs.db.house.Service;

import cs.db.house.Model.FilterDto;
import cs.db.house.Model.House;
import cs.db.house.Model.Option;
import cs.db.house.Model.Pagination;
import cs.db.house.Repository.HouseRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class HouseService {
    private static final Logger logger = LoggerFactory.getLogger(HouseService.class);

    private final String MAX_VALUE = "10000000";

    @Autowired
    private HouseRepository repository;

    public List<House> getAllHouse(Pagination pagination) {
        return repository.selectAllHouse(pagination);
    }

    public Map<String, Object> getHouse(int houseId) {
        Map<String, Object> map = new HashMap<>();

        House house = repository.selectHouseById(houseId);
        Option option = repository.selectOptionById(house.getOptionId());

        map.put("house", house);
        map.put("option", option.getOptionStrings());

        return map;
    }

    public int getHouseCount() {
        return repository.getHouseCount();
    }

    public Map<String, Object> list(FilterDto filter, int page, int range) {
        Map<String, Object> map = new HashMap<>();
        Pagination pagination = new Pagination();

        if (filter.isNullDto() || filter.isAllEmpty()) {
            logger.info("========================= No filtering");
            pagination.pageInfo(page, range, getHouseCount());

            List<House> houseList = getAllHouse(pagination);

            map.put("houseList", houseList);
            map.put("pagination", pagination);
            map.put("isFilter", false);

            return map;
        }

        logger.info("========================= filtering init");

        if(filter.getMaxDeposit().isEmpty()) {
            filter.setMaxDeposit(this.MAX_VALUE);
        }

        if(filter.getMaxMonthlyRent().isEmpty()) {
            filter.setMaxMonthlyRent(this.MAX_VALUE);
        }

        int count = repository.getSpecifiedHouseCount(filter);

        Map<String, Object> paraMap = new HashMap<>();
        paraMap.put("filter", filter);
        paraMap.put("pagination", pagination);

        pagination.pageInfo(page, range, count);
        List<House> houseList = repository.getSpecifiedHouses(paraMap);

        map.put("houseList", houseList);
        map.put("pagination", pagination);
        map.put("isFilter", true);

        return map;
    }
}
