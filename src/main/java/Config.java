/**
 * Created by violet on 6/9/17.
 */
public class Config {
    private String url;
    private String user;
    private String password;

    public Config(){
        url = "jdbc:mysql://localhost/adlister_db?useLegacyDatetimeCode=false&serverTimezone=UTC";
        user = "adlister";
        password = "";
    }

    public String getUrl() {
        return url;
    }

    public String getUser() {
        return user;
    }

    public String getPassword() {
        return password;
    }


}
