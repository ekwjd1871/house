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

    public String getOptionStrings() {
        String str = "";

        if(this.aircondition) {
            str += "에어컨 / ";
        }

        if(this.refrigerator) {
            str += "냉장고 / ";
        }

        if(this.washing) {
            str += "세탁기 / ";
        }

        if(this.gasStove) {
            str += "가스레인지 / ";
        }

        if(this.microwave) {
            str += "전자레인지 / ";
        }

        if(this.desk) {
            str += "책상 / ";
        }

        if(this.bed) {
            str += "침대 / ";
        }

        if(this.closet) {
            str += "옷장 / ";
        }

        if(this.shoeRack) {
            str += "신발장 / ";
        }

        if(this.tv) {
            str += "TV / ";
        }

        if(this.elevator) {
            str += "엘리베이터 / ";
        }

        if(this.parking) {
            str += "주차장 /";
        }

        return str.substring(0, str.length() - 1);
    }
}
