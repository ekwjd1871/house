package cs.db.house.Model;

import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@EqualsAndHashCode
public class FilterDto {
    private String name;
    private String type;
    private String structure;
    private String minDeposit;
    private String maxDeposit;
    private String minMonthlyRent;
    private String maxMonthlyRent;

    public boolean isNullDto() {
        if(name == null && type == null && structure == null && minDeposit == null && maxDeposit == null && minMonthlyRent == null && maxMonthlyRent == null) {
            return true;
        }

        return false;
    }

    public boolean isAllEmpty() {
        if(name.isEmpty() && type.isEmpty() && structure.isEmpty() && minDeposit.isEmpty() && maxDeposit.isEmpty() && minMonthlyRent.isEmpty() && maxMonthlyRent.isEmpty()) {
            return true;
        }

        return false;
    }
}
