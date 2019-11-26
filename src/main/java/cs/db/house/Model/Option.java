package cs.db.house.Model;

import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Option {
    private int optionId;
    private boolean aircondition;
    private boolean refrigerator;
    private boolean washing;
    private boolean gasStove;
    private boolean microwave;
    private boolean desk;
    private boolean bed;
    private boolean closet;
    private boolean shoeRack;
    private boolean tv;
    private boolean elevator;
    private boolean parking;

}
