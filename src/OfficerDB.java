import java.util.ArrayList;
        import java.util.List;
        import java.util.stream.Collectors;

public class OfficerDB {

    static List<Officer> officers = new ArrayList<>();

    public static List<Officer> getAll() {
        return officers;
    }
    public static Officer getOfficer(String id){
        Officer flag = null;
        for (Officer i: officers) {
            if(i.getId().equals(id)){
                flag = i;
                break;
            }
        }
        return flag;
    }
    public static void create(Officer o) {
        officers.add(new Officer(o.getId(), o.getName(), o.getDate_of_birth(), o.getEmail(), o.getJoining_date()));
    }
}
