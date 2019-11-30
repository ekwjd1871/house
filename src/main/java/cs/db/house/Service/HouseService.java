package cs.db.house.Service;

import cs.db.house.Model.House;
import cs.db.house.Model.Pagination;
import cs.db.house.Repository.HouseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HouseService {

    @Autowired
    private HouseRepository repository;

    public List<House> getAllHouse(Pagination pagination) {
        return repository.selectAllHouse(pagination);
    }

    public House getHouse(int houseId) {
        return repository.selectHouseById(houseId);
    }

    public int getHouseCount() {
        return repository.getHouseCount();
    }
}
