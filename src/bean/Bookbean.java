package bean;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 * Created by xiaomin on 2014/10/7.
 */

public class Bookbean
{

    private String ISBN=null;
    private   String title=null;
    private String author=null;
    private String publisher=null;
    private float price;
    private String date;
    private  String age;
    private String nation;
    public Bookbean()
    {

    }
    public void setNation(String nation)
    {
        this.nation=nation;
    }
    public String getNation()
    {
        return nation;
    }
    public  void setAge(String age)
    {
        this.age=age;
    }
    public String getAge()
    {
        return age;
    }
    public void setISBN(String ISBN)
    {
        this.ISBN=ISBN;
    }
    public void setTitle(String title)
    {
        this.title=title;
    }
    public void setAuthor(String author)
    {
        this.author=author;
    }
    public void setPublisher(String publisher)
    {
        this.publisher=publisher;
    }
    public  void setPrice(float price)
    {
        this.price=price;
    }
    public void setDate(String date)
    {
        this.date=date;
    }
    public String getISBN()
    {
        return ISBN;
    }
    public String getTitle()
    {
        return title;
    }
    public String getAuthor()
    {
        return author;
    }
    public String getPublisher()
    {
        return publisher;
    }
    public String getDate()
    {
        return date;
    }
    public float getPrice()
    {
        return price;
    }
    public int addBook(String sql)
    {
        int n=0;
        try {

            //创建数据库连接
            con = getConnection();

            //创建sql语句对象
            stmt = createStatement(sql);

            //执行sql语句
            n=executeUpdate();

        }
        catch (Exception e) {
            System.out.println(e.toString());
        }
        finally {
            close();
        }
        return n;
    }
    public ArrayList searchBook(String sql)
    {
        ArrayList books=new ArrayList();
        try {

            //创建数据库连接
            con = getConnection();

            //创建sql语句对象

            stmt = createStatement(sql);
            //执行语句
            rs = stmt.executeQuery();
            //处理结果
            while (rs.next()) {
                String tempISBN=rs.getString(1);
                String tempTitle=rs.getString(2);
                String tempAuthor=rs.getString(3);
                String tempPublisher=rs.getString(4);
                float tempPrice=rs.getFloat(5);
                String tempDate=rs.getString(6);
                String tempAge=rs.getString(7);
                String tempNation=rs.getString(8);
                //创建图书对象
                Bookbean book=new Bookbean();
                book.setISBN(tempISBN);
                book.setTitle(tempTitle);
                book.setAuthor(tempAuthor);
                book.setPublisher(tempPublisher);
                book.setPrice(tempPrice);
                book.setDate(tempDate);
                book.setAge(tempAge);
                book.setNation(tempNation);
                //把书添加到链表中
                books.add(book);
            }
        } catch (Exception e) {
            System.out.println(e.toString());
        }
        finally {
            close();
        }
        return books;
    }

    public ArrayList findAllBooks() {

        ArrayList books = new ArrayList();


        try {

            //创建数据库连接
            con = getConnection();

            //声明sql语句
            String sql = "select * from books";

            //创建sql语句对象

            stmt = createStatement(sql);
            //执行语句
            rs = stmt.executeQuery();
            //处理结果
            while (rs.next()) {
                String tempISBN=rs.getString(1);
                String tempTitle=rs.getString(2);
                String tempAuthor=rs.getString(3);
                String tempPublisher=rs.getString(4);
                float tempPrice=rs.getFloat(5);
                String tempDate=rs.getString(6);
                //创建图书对象
                Bookbean book=new Bookbean();
                book.setISBN(tempISBN);
                book.setTitle(tempTitle);
                book.setAuthor(tempAuthor);
                book.setPublisher(tempPublisher);
                book.setPrice(tempPrice);
                book.setDate(tempDate);
                //把书添加到链表中
                books.add(book);
            }
        } catch (Exception e) {
            System.out.println(e.toString());
        }
        finally {
            close();
        }
        return books;
    }
    public Bookbean getDetail(String ISBN)
    {
       Bookbean book=new Bookbean();
        try {

            //创建数据库连接
            con = getConnection();

            //声明sql语句
            String sql="select * from books where ISBN=\""+ISBN+"\"";

            //创建sql语句对象
            stmt=createStatement(sql);

            //执行语句
            rs=executeQuery();
            while (rs.next())
            {
                String tempISBN=rs.getString(1);
                String tempTitle=rs.getString(2);
                String tempAuthor=rs.getString(3);
                String tempPublisher=rs.getString(4);
                float tempPrice=rs.getFloat(5);
                String tempDate=rs.getString(6);
                String tempage=rs.getString(7);
                String tempnation=rs.getString(8);
                book.setISBN(tempISBN);
                book.setTitle(tempTitle);
                book.setAuthor(tempAuthor);
                book.setPublisher(tempPublisher);
                book.setPrice(tempPrice);
                book.setDate(tempDate);
                book.setAge(tempage);
                book.setNation(tempnation);

            }
        }
        catch (Exception e) {
            System.out.println(e.toString());
        }
        finally {
            close();
        }

        return book;
    }
    public int deleteBook(String ISBN)
    {

       int i=0;

        try {

            //创建数据库连接
            con = getConnection();

            //声明sql语句

            String sql = "delete from books where ISBN=\"" + ISBN + "\"";

            //创建sql语句对象
            stmt = createStatement(sql);

            //执行语句
            i=executeUpdate();

        }
        catch (Exception e) {
            System.out.println(e.toString());
        }
        finally {
            close();
        }

        return i;

    }

    public int editBook(String sql)
    {
        int i=0;
        try {
            //创建数据库连接
            con = getConnection();

            //创建sql语句对象
            stmt = createStatement(sql);
            //执行语句
            i=executeUpdate();
        }
        catch (Exception e) {
            System.out.println(e.toString());
        }
        finally {
            close();
        }
        return i;
    }
   //数据库连接封装
    Connection con = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    String driverClass = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/booklib";

    // 完成连接的创建
    public Connection getConnection() throws Exception {
        Class.forName(driverClass);//加载驱动程序
        if (con == null) {
            con = DriverManager.getConnection(url,"root", "");
        }
        return con;
    }

    //创建语句对象
    public PreparedStatement createStatement(String sql) throws Exception {
        stmt = getConnection().prepareStatement(sql);
        return stmt;
    }

    //执行带有结果集返回的方法
    public ResultSet executeQuery() throws Exception {
        rs = stmt.executeQuery();
        return rs;
    }

    //执行没有结果集返回的方法
    public int executeUpdate() throws Exception {
        return stmt.executeUpdate();
    }

    //关闭对象
    public void close() {
        if (rs != null) {
            try {
                rs.close();
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        if (stmt != null) {
            try {
                stmt.close();
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        if (con != null) {
            try {
                con.close();
            } catch (Exception e) {
                System.out.println(e);
            }
        }
    }

}
