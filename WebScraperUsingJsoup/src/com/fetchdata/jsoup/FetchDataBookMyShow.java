package com.fetchdata.jsoup;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class FetchDataBookMyShow {

	public static void main(String[] args) {
		String url="https://in.bookmyshow.com/movies/";
		 Document doc; 
		 try {
			 doc = Jsoup.connect(url).get();
			 
			 String pageTitle=doc.title();
			 System.out.println(pageTitle);
			 
			 Element div = doc.getElementById("now-showing");
			 
			 String cssClass = div.className();
			
			 //Elements links = doc.select("a"); 
			// Elements aLang = links.select("[href*=pune]");
			 Elements aLang=doc.getElementsByClass("_anchor-filter");
			 for (Element link : aLang) {  
				                                                          //_anchor-filter
				    System.out.println("text : " + link.text());  
				}  
			
				 
			 
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		 
		
		
		
		
		
		
		
		
		
	}

}
