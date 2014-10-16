package action;

/**
 * Created by xiaomin on 2014/10/7.
 */
import bean.Bookbean;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.util.Map;

public class AddBook extends ActionSupport{
    private String ISBN=null;
    private String title=null;
    private String author=null;
    private String publisher=null;
    private float price;
    private String date;
    private  String age;
    private String nation;

    public void setNation(String nation)
    {
        this.nation=nation;
    }
    public String getNation()
    {
        return nation;
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

    public String execute()
    {
       String values="(\""+ISBN+"\",\""+title+"\",\""+author+"\",\""+publisher+"\",\""+price+"\",\""+date+"\"," +
               "\""+age+ "\",\""+nation+"\")";
       String sql="insert into books values"+values;

        Bookbean book=new Bookbean();
        int n=book.addBook(sql);
        ActionContext context=ActionContext.getContext();
        Map request=(Map)context.get("request");
        String msg="";
        String msg1="/addbook.jsp";
        request.put("msg1",msg1);
        if(n==0)
        {
            msg="添加失败.";
            request.put("msg",msg);
            return "failure";
        }
        else
        {
         msg="添加成功.";
            request.put("msg",msg);
        return "success";
        }




    }
}
