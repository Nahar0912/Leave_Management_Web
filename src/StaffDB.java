import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class StaffDB {
    static List<Staff> staffs = new ArrayList<>();

    public static List<Staff> getAll() {
        return staffs;
    }
    public static Staff getStaff(String id){
        Staff flag = null;
        for (Staff i: staffs) {
            if(i.getId().equals(id)){
                flag = i;
                break;
            }
        }
        return flag;
    }
    public static void create(Staff staff) {
        staffs.add(new Staff(staff.id, staff.name, staff.date_of_birth, staff.email, staff.joining_date));
    }
}
