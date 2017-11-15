using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.OleDb;

using System.Net;

using HtmlAgilityPack;
 
using System.Text.RegularExpressions;

using System.IO;

using System.Threading;

using System.Text;

using WindowsFormsApplication5;

public partial class _Default : System.Web.UI.Page
{
    public static int gener = 500;
    public static double CrossOver = 0.7;
    public static double Mution = 0.5;
    public static int Pouple = 500;
    public static int Genem = 100;

    

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    ListBox l_title=new ListBox();
ListBox l_link=new ListBox();
ListBox L_discript=new ListBox();

     
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked) { 
        Search_with_GA();
        }
        if (RadioButton2.Checked){
        Search_non_GA();
        
        }

       
     
            


    }



    public void Search_with_GA() {

        DataSet ds = new DataSet();

        var objBing = new Bing.BingSearchContainer(new Uri("https://api.datamarket.azure.com/Bing/Search"));

        //Replace this Account Key with you Account Key

        var accountKey = "EMdPzpSl/qTbvz6/ScfE5sFLzuxNfU/crNSmIYjQDes=";

        //Passing the Credintial

        objBing.Credentials = new System.Net.NetworkCredential(accountKey, accountKey);

        //Following Line is used to get the Search Result as DataSource.

        var webResult = objBing.Web(txtSearch.Text.ToString(), null, null, null, null, null, null, null);

        webResult = webResult.AddQueryOption("$top", 30);


        GridViewSearchResult.DataSource = webResult;

        GridViewSearchResult.DataBind();
    
    }

    public void Search_non_GA() {

        DataSet ds = new DataSet();

        var objBing = new Bing.BingSearchContainer(new Uri("https://api.datamarket.azure.com/Bing/Search"));

        //Replace this Account Key with you Account Key

        var accountKey = "EMdPzpSl/qTbvz6/ScfE5sFLzuxNfU/crNSmIYjQDes=";

        //Passing the Credintial

        objBing.Credentials = new System.Net.NetworkCredential(accountKey, accountKey);

        //Following Line is used to get the Search Result as DataSource.

        var webResult = objBing.Web(txtSearch.Text.ToString(), null, null, null, null, null, null, null);

        webResult = webResult.AddQueryOption("$top", 30);


        foreach (var result in webResult)
        {

            //ListBox1.Items.Add(ConvertUrlsToLinks(result.Url + " " + result.Description));
            //  while (f!=10)
            // {
            //   Class1.Index_Gen_WebSite[f] = result.Url;

            // }


            l_title.Items.Add(result.Title);
            l_link.Items.Add(result.Url);
            L_discript.Items.Add(result.Description);

            // ListBox1.Items.Add(result.Url);

            // f=f+1;
        }


        //step 2
        run2();



        //  webResult.Execute().ToList();




        // step 3
        GA_Detect();



        ds = table_data();



        //  ds.Tables[0];

        GridViewSearchResult.DataSource = ds;

        GridViewSearchResult.DataBind();
    
    }



    public void GA_Detect() {

        _Default.CrossOver = double.Parse("0.7");//CrossOver
        _Default.Mution = double.Parse("0.05");//Mution
        _Default.Pouple = int.Parse("100");//Pouple
        _Default.gener = int.Parse("500");//Generation
        _Default.Genem = int.Parse("10");//Genem


        Main();


        for (int i = 0; i < l_link.Items.Count; i++)
        {
            if (coeficients[i] > 90)
            {

              //  listBox3.Items.Add(i + ": " + listBox1.Items[i].ToString());

            }
            else
            {
              //  listBox2.Items.Add(i + ": " + listBox1.Items[i].ToString());

            }


        }


      //  label10.Text = listBox2.Items.Count.ToString();
       // label11.Text = listBox3.Items.Count.ToString();

    
    }




    public DataSet table_data()
    {
       // string darsade_ads="";
       
         DataSet ds;
         DataTable table1;

      

              ds = new DataSet();
              table1 = new DataTable("result_se");


        table1.Columns.Add("title");
        table1.Columns.Add("url");
        table1.Columns.Add("description");
        table1.Columns.Add("darsade_ads");

        for (int i = 0; i < l_title.Items.Count; i++)
        {

        table1.Rows.Add(l_title.Items[i], l_link.Items[i], L_discript.Items[i],"احتمال وجود: " + coeficients[i].ToString());

        }


        ds.Tables.Add(table1);

        // ds.Tables.Add(dt);
       // GridView1.DataSource = ds.Tables[0];
       // GridView1.DataBind();

        return ds;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
       // ListBox1.Items.Clear();

        var accountKey = "EMdPzpSl/qTbvz6/ScfE5sFLzuxNfU/crNSmIYjQDes=";

        var bingContainer = new Bing.BingSearchContainer(new Uri("https://api.datamarket.azure.com/Bing/Search"));
     
        bingContainer.Credentials = new NetworkCredential(accountKey, accountKey);
        var webQuery = bingContainer.Web(txtSearch.Text.ToString(), null, null, null, null, null, null,null);
        webQuery = webQuery.AddQueryOption("$top", 20);
       var webResults = webQuery.Execute();
        foreach (var result in webQuery)
        {
            //ListBox1.Items.Add(ConvertUrlsToLinks(result.Url));
        }

    //    for (int i = 0; i < 50; i++)
     //   {

//
        //    search2("site:" + ListBox1.Items[i].ToString() + " " + "تومان + پرداخت آنلاین +  فروش + درج آگهی رایگان + تبلیغات اینترنتی", ListBox1.Items[i].ToString());
      //  }

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
      //  ListBox2.Items.Clear();

     //   for (int i = 0; i < ListBox1.Items.Count; i++)
      //  {
            
        
      //  yu(ListBox1.Items[i].ToString());

      //  }
    }



    public void yu(string link)
    {



        var count = "0";
        int countN = 0;



        CookieCollection cookies = new CookieCollection();

        HttpWebRequest request = (HttpWebRequest)WebRequest.Create("http://www.bing.com/");
        request.CookieContainer = new CookieContainer();
        request.CookieContainer.Add(cookies);
        request.Timeout = Timeout.Infinite;
        HttpWebResponse response = (HttpWebResponse)request.GetResponse();
        StreamReader response1 = new StreamReader(response.GetResponseStream());
        cookies = response.Cookies;


        string web = "http://www.bing.com";
        //post
        string getUrl = (web + "/search?q=" + "site:" + link + " " + "تومان + آگهی رایگان + تبلیغات");

        try
        {
        HttpWebRequest webreq = (HttpWebRequest)WebRequest.Create(getUrl);
        HttpWebResponse webrep = (HttpWebResponse)webreq.GetResponse();
        StreamReader websr = new StreamReader(webrep.GetResponseStream());
        Match results = Regex.Match(websr.ReadToEnd(), "\\d+\\S+\\d+ results", RegexOptions.Singleline);
        count = Regex.Match(results.ToString(), "\\d+\\S+\\d+").ToString();

       

            count = count.Replace(",", "").Replace("results", "");

            countN = int.Parse(count);

        }

        catch (Exception)
        {

            countN = 0;
        }
        //    ListBox2.Items.Add( count + " " + countN + " ");

        //  websr.ReadToEnd().Split("<span class=\"sb_count\" id=\"count\">");




        //ListBox2.Items.Add(link +" : " + countN.ToString());


        //     Label1.Text = count + " " + countN + " ";



    }



    public void search2(string str_search, string str_search2)
    {

        try
        {



            var doc = new HtmlWeb().Load("http://www.google.com/search?q=" + str_search);
            var div = doc.DocumentNode.SelectSingleNode("//div[@id='resultStats']");
            var text = div.InnerHtml.ToString();
          //  TextBox2.Text = div.ToString();

            Match match = Regex.Match(text, @"About ([0-9,]+)");
            if (match.Success)
            {

                //ListBox2.Items.Add(match.Groups[1].Value + " -> " + str_search2);
            }

        }
        catch (Exception)
        {

            string i2 = "";

            i2 = "d";
             
        }

     //   var matches = Regex.Matches(text, @"About ([0-9,]+) ");
      //  var total = matches.Groups[1].Value;

       // Label1.Text = total;

      //  ListBox2.Items.Add(total);

    }

    private string ConvertUrlsToLinks(string msg)
    {

        Uri originalUrl = new Uri(msg); // Request.Url
        string domain = originalUrl.Host; // www.mydomain.com
        string domainUrl = String.Concat(originalUrl.Scheme, Uri.SchemeDelimiter, originalUrl.Host); // http://www.mydomain.com


        return domainUrl;
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void txtSearch_TextChanged(object sender, EventArgs e)
    {

    }







    int c_k = 0;
    string c_d = "";
    string link_count = "", txthtml = "";

 


    public static int[] coeficients = new int[_Default.Genem];
    public static double theActualFunction(double[] values)
    {
        double result = 0;

        /*
                    coeficients[0] = 100;
                    coeficients[1] = -7;
                    coeficients[2] = -4;
                    coeficients[3] = -8;
                    coeficients[4] = -4;
                    coeficients[5] = -4;
                    coeficients[6] = -4;
                    coeficients[7] = -8;
                    coeficients[8] = -4;
                    coeficients[9] = -8;  
                    coeficients[10] = -7;
                    coeficients[11] = -7;
                    coeficients[12] = -4;
                    coeficients[13] = -8;
                    coeficients[14] = -8;
                    coeficients[15] = -4;
                    coeficients[16] = -4;
                    coeficients[17] = -8;
                    coeficients[18] = -4;
                    coeficients[19] = -8;
                    coeficients[20] = -8;
                    coeficients[21] = -7;
                    coeficients[22] = -4;
                    coeficients[23] = -8;
                    coeficients[24] = -4;
                    coeficients[25] = -4;
                    coeficients[26] = -4;
                    coeficients[27] = -8;
                    coeficients[28] = -4;
                    coeficients[29] = -8; 
                 //   coeficients[99] = 100;
                 //   for (int j = 10; j < 98; j++)
                 //   {
                  //      coeficients[j] = -4;
                   // }

                    */


        //..........
        //  coeficients[99] = 100;
        for (int i = 0; i < _Default.Genem; i++)
        {
            int x = values[i] > 0.5 ? 1 : 0;
            result += (coeficients[i] * x);
        }

        return result;

    }



    public void Main()
    {
        //  Crossover		= 70%
        //  Mutation		=  5%
        //  Population size = 100
        //  Generations		= 500
        //  Genome size		= 10
       
        
        GA ga = new GA(_Default.CrossOver, _Default.Mution, _Default.gener, _Default.gener, _Default.Genem);

        //  GA ga = new GA(0.7, 0.05, 100, 1000, 30);

        //   GA ga = new GA(0.7, 0.05, 1000, 200, 200);

        ga.FitnessFunction = new GAFunction(theActualFunction);


        ga.Elitism = true;
        ga.Go();

        double[] values;
        double fitness;

        List<Genome> allgens = new List<Genome>();
        int x0 = 1;
        string result = "";

        ga.GetBest(out values, out fitness, out allgens);
        //   System.Console.WriteLine("\nall genoms :\n");
        foreach (Genome g in allgens)
        {
            double[] tempvalues = new double[g.Length];
            g.GetValues(ref tempvalues);
            foreach (double valeur in tempvalues)
                result += string.Format("{0} ", valeur > 0.5 ? 1 : 0);
         //   textBox6.Text += result + "  " + theActualFunction(tempvalues) + Environment.NewLine;
            // System.Console.Write("   value= {0} ", theActualFunction(tempvalues));
            // System.Console.WriteLine("\n");

            result = "";

        }


      //  textBox7.Text = fitness.ToString(); ;

        //  System.Console.WriteLine("Best ({0}):", fitness);
        //    foreach (double valeur in values)
        //      System.Console.Write("{0} ", valeur > 0.5 ? 1 : 0);
        //  System.Console.Write("   value= {0} ", theActualFunction(values));
        //  System.Console.WriteLine("\n");

        //   System.Console.ReadLine();

    }


    public void run2()
    {


      //  listBox4.Items.Clear();

        // calcu get cost/size keyword | for example www.taiol.ir= 400
        //  textBox1.Text = key_web(AcquireHTML(textBox2.Text));
        for (int i = 0; i < l_link.Items.Count; i++)
        {



            int keyword_firstpage = 0;
            int Feature_Url = 0;

            txthtml = AcquireHTML(l_link.Items[i].ToString());

            //بررسی وجود کلمات کلیدی تبلیغاتی در توضیحات وب سایت
            // c_k = info_link_count(key_web(txthtml));

            //بررسی وجود کلمات کلیدی در صفحه اول
            // c_k += info_link_count(txthtml);
            c_k = 0;

            // feature url
            //بررسی ویژگی های یو آر ال

            Feature_Url = info_link_url(l_link.Items[i].ToString());

            // c_k= in_lik(txthtml).ToString();




            // calcu get cost/size description website | for example www.taiol.ir= 290

            // بررسی و محاسبه تعداد کلمات کلیدی در صفحه اول
            keyword_firstpage += TextTool.CountStringOccurrences(txthtml, "تبلیغات");
            keyword_firstpage += TextTool.CountStringOccurrences(txthtml, "آگهی");
            keyword_firstpage += TextTool.CountStringOccurrences(txthtml, "رایگان");
            keyword_firstpage += TextTool.CountStringOccurrences(txthtml, "تومان");
            keyword_firstpage += TextTool.CountStringOccurrences(txthtml, "خرید");
            keyword_firstpage += TextTool.CountStringOccurrences(txthtml, "درج آگهی");
            keyword_firstpage += TextTool.CountStringOccurrences(txthtml, "برنده");
            keyword_firstpage += TextTool.CountStringOccurrences(txthtml, " تبلیغات رایگان");
            keyword_firstpage += TextTool.CountStringOccurrences(txthtml, "فروش");
            keyword_firstpage += TextTool.CountStringOccurrences(txthtml, "ماهانه فقط");
            //j += TextTool.CountStringOccurrences(AcquireHTML(listBox1.Items[i].ToString()), "پردا");
            txthtml = "";



            // check is or is'nt website in blacklist | for example www.taiol.ir= false



            ///clacu get count of local link each link
            ///
            string g = "null";

            //  search2("site:" + listBox1.Items[i].ToString() + " " + "تومان + آگهی + تبلیغات + خرید", listBox1.Items[i].ToString() ,out g);

            link_count = g;




          //  textBox6.Text += i + ":" + listBox1.Items[i].ToString() + " --->      d:" + keyword_firstpage + " k:" + c_k + " l:" + link_count + Environment.NewLine;

         //   textBox8.Text += i + ":" + listBox1.Items[i].ToString() + ": " + keyword_firstpage + "-" + c_k + Environment.NewLine;

            //  listBox4.Items.Insert(i, j +" - "+ int.Parse(c_k) + " - " + link_count);

            c_adv(keyword_firstpage, c_k, Feature_Url, i, l_link.Items[i].ToString());

            //  j.ToString(), c_k.ToString(), link_count, link_feature

            // c_adv(c_k,j,i);

            //if (c_k > 70 & j > 30 || j > 70 & c_k > 30)
            //{

            //     listBox4.Items.Insert(i, listBox1.Items[i].ToString());
            // textBox8.Text += i + ":" + listBox1.Items[i].ToString() + ": " + j + "-" + c_k + Environment.NewLine;

            //   }


            //  insert_gt(i.ToString(), listBox1.Items[i].ToString(), "", keyword_firstpage.ToString(), "", Feature_Url);




           // Label1.Text = i2 + "";

            // c_k = 0;



        }

    }

    public int fitnes_calcu()
    {

        return 0;
    }

    int ci = 1;

    public void c_adv(int keyword_firstpage, int is_key, int Feature_Url, int i, string link)
    {
        coeficients[i] = -4;


        int cost = fitnes_calcu();

        if (keyword_firstpage > 55)
        {
            ci = 70;

        }
        if (is_key > 700)
        {
            ci += 30;
        }

        if (Feature_Url < 1)
        {
            ci = -10;
        }

        if (Feature_Url > 30)
        {
            ci = 100;
        }


        if (ci >= 90)
        {

           // listBox4.Items.Add(link + " " + keyword_firstpage + " - " + is_key + " - " + Feature_Url);
            // listBox3.Items.Add(i + ":" + link);
            coeficients[i] = 98;


            // textBox8.Text += i + ":" + listBox1.Items[i].ToString() + ": " + j + "-" + c_k + Environment.NewLine;
        }
        //   else {


        // listBox2.Items.Add(i + ":" + link);
        //}


        ci = 0;





    }


    public void insert_gt(string code, string link, string dis_a, string key_a, string key_a_google, int link_feature)
    {

        string str1 = "";
        str1 = @"Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" + Directory.GetCurrentDirectory() + "\\db2.mdb;Persist Security Info=True";



        OleDbConnection ol = new OleDbConnection(str1);

        OleDbCommand cmd = new OleDbCommand("insert into Table1(name,key_first_page,link_feature)Values( '" + link + "','" + key_a + "','" + link_feature + "')", ol);

        ol.Open();
        cmd.ExecuteReader();
        ol.Close();


    }



    public void search2(string str_search, string str_search2, out string r2)
    {

        r2 = "";

        try
        {


            var doc = new HtmlWeb().Load("http://www.google.com/search?q=" + str_search);
            var div = doc.DocumentNode.SelectSingleNode("//div[@id='resultStats']");
            var text = div.InnerHtml.ToString();
            //     TextBox2.Text = div.ToString();



            Match match = Regex.Match(text, @"About ([0-9,]+)");




         //   textBox8.Text += match.Groups[1].Value + " -> " + str_search2 + Environment.NewLine;






            r2 = match.Groups[1].Value;

        }
        catch (Exception)
        {

            string i2 = "";

            i2 = "d";

        }
        //   var matches = Regex.Matches(text, @"About ([0-9,]+) ");
        //  var total = matches.Groups[1].Value;

        // Label1.Text = total;

        //  ListBox2.Items.Add(total);



    }



    public string metaTitle;
    public string metaDescription;
    public string metaKeywords;

    public bool GetMetaTags(string url)
    {
        try
        {
            //get the HTML of the given page and put into a string
            string html = AcquireHTML(url);

            if (GetMeta(html))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        catch (Exception ex)
        {
            // do something with the error
            return false;
        }
    }

    private string AcquireHTML(string address)
    {
        HttpWebRequest request;
        HttpWebResponse response = null;
        StreamReader reader;
        StringBuilder sbSource;

        try
        {
            // Create and initialize the web request  
            request = System.Net.WebRequest.Create(address) as HttpWebRequest;
            request.UserAgent = "your-search-bot";
            request.KeepAlive = false;
            request.Timeout = 10 * 1000;

            // Get response  
            response = request.GetResponse() as HttpWebResponse;

            if (request.HaveResponse == true && response != null)
            {
                // Get the response stream  
                reader = new StreamReader(response.GetResponseStream());

                // Read it into a StringBuilder  
                sbSource = new StringBuilder(reader.ReadToEnd());

                response.Close();

                // Console application output  
                return sbSource.ToString();
            }
            else
                return "";
        }
        catch (Exception ex)
        {

            // response.Close();
            return "";
        }
    }

    private bool GetMeta(string strIn)
    {
        try
        {
            // --- Parse the title
            Match TitleMatch = Regex.Match(strIn, "<title>([^<]*)</title>", RegexOptions.IgnoreCase | RegexOptions.Multiline);
            metaTitle = TitleMatch.Groups[1].Value;

            // --- Parse the meta keywords
            Match KeywordMatch = Regex.Match(strIn, "<meta name=\"keywords\" content=\"([^<]*)\">", RegexOptions.IgnoreCase | RegexOptions.Multiline);
            metaKeywords = KeywordMatch.Groups[1].Value;

            // --- Parse the meta description
            Match DescriptionMatch = Regex.Match(strIn, "<meta name=\"description\" content=\"([^<]*)\">", RegexOptions.IgnoreCase | RegexOptions.Multiline);
            metaDescription = DescriptionMatch.Groups[1].Value;

            return true;
        }
        catch (Exception ex)
        {
            // do something with the error
            return false;
        }
    }


    string count_index_key = "";
    int i2 = 0;

    public string key_web(string str_search)
    {

        try
        {

            var text = str_search;


            //   textBox2.Text = div.ToString();

            Match match = Regex.Match(text, "<meta name=\"description\" content=\"([^<]*)\"([^<]*)>", RegexOptions.IgnoreCase | RegexOptions.Multiline); ;


            if (match.Success)
            {

                count_index_key = match.Groups[1].Value + " -> ";
                //     count_index_key += count_index_key.Replace(",", "");
            }

        }
        catch (Exception)
        {


            return "";


        }


        return count_index_key;

    }


    public int info_link_count(string Address_link_d)
    {


        string text_info = Address_link_d;

        int cost_info_link = 1;


        cost_info_link += search_key(text_info, "تبلیغات", 20);
        cost_info_link += search_key(text_info, "آگهی", 20);
        cost_info_link += search_key(text_info, "رایگان", 10);
        cost_info_link += search_key(text_info, "خرید", 5);
        cost_info_link += search_key(text_info, "فروش", 5);
        cost_info_link += search_key(text_info, "تومان", 5);
        cost_info_link += search_key(text_info, "درج آگهی", 25);
        cost_info_link += search_key(text_info, "نیازمندی", 15);






        return cost_info_link;

    }


    public int info_link_url(string Address_link_d)
    {


        string text_info = Address_link_d;

        int cost_info_link = 1;


        cost_info_link += search_key(text_info, "agahi", 70);
        cost_info_link += search_key(text_info, "niaz", 70);
        cost_info_link += search_key(text_info, "bazar", 40);
        cost_info_link += search_key(text_info, "shop", 60);
        cost_info_link += search_key(text_info, "market", 60);
        cost_info_link += search_key(text_info, "forush", 70);
        cost_info_link += search_key(text_info, "forosh", 70);
        cost_info_link += search_key(text_info, "tabligh", 75);
        cost_info_link += search_key(text_info, "payam", 30);
        cost_info_link += search_key(text_info, "kala", 30);

        cost_info_link += search_key(text_info, "bank", -10);
        cost_info_link += search_key(text_info, "news", -50);
        cost_info_link += search_key(text_info, "download", -40);
        cost_info_link += search_key(text_info, "music", -70);
        cost_info_link += search_key(text_info, "khabar", -30);






        return cost_info_link;

    }


    public int search_key(string text_info, string skey, int cost)
    {


        if (text_info.Contains(skey) == true)
        {

            cost += 2;
        }

        else
        {
            cost = 0;

        }

        return cost;

    }


    public static class TextTool
    {
        /// <summary>
        /// Count occurrences of strings.
        /// </summary>
        public static int CountStringOccurrences(string text, string pattern)
        {
            // Loop through all instances of the string 'text'.
            int count = 0;
            int i = 0;
            while ((i = text.IndexOf(pattern, i)) != -1)
            {
                i += pattern.Length;
                count++;
            }
            return count;
        }
    }


    public void get_max100(int index_gen3)
    {



        //connection = new SqlConnection(...); 

        OleDbConnection CN = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\Users\12\Documents\Visual Studio 2010\Projects\WindowsFormsApplication5\WindowsFormsApplication5\bin\Debug\db2.mdb;Persist Security Info=True");

        OleDbCommand cmd = new OleDbCommand("select * from d_2_Alexa_100 where code=" + index_gen3, CN);

        CN.Open();

        OleDbDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {

            //dis_a,key_a,link_feature
            int dis_a = int.Parse(dr["dis_a"].ToString());
            int key_a = int.Parse(dr["key_a"].ToString());
            string link_feature = dr["link_feature"].ToString();
            string link = dr["link"].ToString();

            c_adv(dis_a, key_a, int.Parse(link_feature), index_gen3, link);


        }



        //all other stuff goes here


        CN.Close(); //This will always close the connection, even with exceptions.





    }



}