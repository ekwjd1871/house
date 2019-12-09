package cs.db.house.Model;

import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class House {
    private int houseId;
    private int optionId;
    private String name;
    private String address;
    private String type;
    private int deposit;
    private int monthlyRent;
    private String structure;
    private String latlngX;
    private String latlngY;
}
