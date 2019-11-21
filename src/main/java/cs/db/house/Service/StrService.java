package cs.db.house.Service;

import cs.db.house.Repository.StrRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StrService {

    @Autowired
    private StrRepository strRepository;
}
