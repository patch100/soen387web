/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package P1;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
import org.w3c.dom.Element;
import java.io.File;

import java.nio.file.Paths;
import java.nio.file.Path;
/**
 *
 * @author Mat
 */
public class LoginDao {
    public static boolean validate(String un, String pw){  
boolean status=false;  
try {

	File fXmlFile = new File("/Users/Mat/Desktop/Soen387/Users.xml");
        Path currentRelativePath = Paths.get("");
        System.out.println(currentRelativePath.toAbsolutePath().toString());
	DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
	DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
	Document doc = dBuilder.parse(fXmlFile);

	//optional, but recommended
	//read this - http://stackoverflow.com/questions/13786607/normalization-in-dom-parsing-with-java-how-does-it-work
	doc.getDocumentElement().normalize();

	System.out.println("Root element :" + doc.getDocumentElement().getNodeName());

	NodeList nList = doc.getElementsByTagName("user");

	System.out.println("----------------------------");

	for (int temp = 0; temp < nList.getLength(); temp++) {

		Node nNode = nList.item(temp);

		System.out.println("\nCurrent Element :" + nNode.getNodeName());

		if (nNode.getNodeType() == Node.ELEMENT_NODE) {

			Element eElement = (Element) nNode;
                        System.out.println(eElement.getAttribute("id"));
                        
                        /*if (eElement.getElementsByTagName("username").equals(bean.getUname())) {
                            System.out.println("usernames are equal");
                        }*/
                        //String test = nNode.
                        //System.out.println(test);
                        if (un.equals(eElement.getElementsByTagName("username").item(0).getTextContent()))
                        {
                            System.out.println("usernames are equal");
                            if (pw.equals(eElement.getElementsByTagName("password").item(0).getTextContent()))
                            {
                                System.out.println("passwords match");
                                status = true;
                                break;
                            }
                        }
                        
                        /*System.out.println(bean.getUname());
                        System.out.println(bean.getPass());

			System.out.println("Username : " + eElement.getElementsByTagName("username").item(0).getTextContent());
			System.out.println("Password : " + eElement.getElementsByTagName("password").item(0).getTextContent());
                        */
		}
	}
    } catch (Exception e) {
	e.printStackTrace();
    }
    return status;
}
}
