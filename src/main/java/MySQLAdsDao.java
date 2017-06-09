import com.mysql.jdbc.*;
import com.mysql.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by violet on 6/9/17.
 */
public class MySQLAdsDao implements Ads {
    Connection connection;

    public MySQLAdsDao() throws SQLException {
        Config config = new Config();
        DriverManager.registerDriver(new Driver());
        this.connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
        );

    }

    @Override
    public List<Ad> all() throws SQLException {
        // todo: create the database connection
        String query = "SELECT * FROM ads";

        // todo: create a statement object
        Statement statement = connection.createStatement();

        // todo: run the sql query to get all the ad records

        ResultSet results = statement.executeQuery(query);



        // todo: use the results to build a List<Ad>

        List<Ad> ads = new ArrayList<>();

        while(results.next()){
            Long id = results.getLong("id");
            Long userId = results.getLong("user_id");

            String title = results.getString("title");
            String description = results.getString("description");
            ads.add(new Ad(id, userId, title, description));
        }

        return ads;
    }

    @Override
    public Long insert(Ad ad) {
        return null;
    }
}

