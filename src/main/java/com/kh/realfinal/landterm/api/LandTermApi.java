package com.kh.realfinal.landterm.api;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.kh.realfinal.landterm.model.vo.LandTerm;

public class LandTermApi {

	// ���� �Ľ� �ڵ� : http://api.visitkorea.or.kr/openapi/service/rest/GoCamping/basedList?serviceKey=PCNxso2TMGeSrjPMsBxvOscmyUmaYllFFoSb%2BN%2BjMnDf4gSitSdIZjC3290UCja4ki92iGwbCXZv6utvCT0IAg%3D%3D&pageNo=1&numOfRows=1000&MobileOS=ETC&MobileApp=AppTest
	// ���� �Ľ� �ڵ� : https://www.hf.go.kr/research/openapi/DicApiList.do?Key=124fa56d876c45688f2bc91682280456&Type=xml&pIndex=8&pSize=100

	
	public static String Key = "124fa56d876c45688f2bc91682280456";

	// ���ñ������ý��� URL
	public static String LAND_TERM_XML_URL = "https://www.hf.go.kr/research/openapi/DicApiList.do";

	public static void main(String[] args) {

		LandTermApi.callLandTermByXML();
		System.out.println("-----------------------------------------");
	}

	public static List<LandTerm> callLandTermByXML() {
		List<LandTerm> list = new ArrayList<LandTerm>();
		int pageNo = 1;
		String Type = "xml";
		int pIndex = 1;
		int pSize = 50;

		while (true) {

			// 1. URL�� �����ϴ� �ڵ� ����
			System.out.println("pageNumber : " + pageNo);
			StringBuilder urlBuilder = new StringBuilder(LAND_TERM_XML_URL); /* URL */
			// encode = �ѱ��� �������� �Ʒ� �ּ��ڵ� Ǯ� ����Ѵ�!
//			urlBuilder.append("?" + URLEncoder.encode("key","UTF-8") + "=" + URLEncoder.encode(key, "UTF-8"));
//			urlBuilder.append("&" + URLEncoder.encode("targetDt","UTF-8") + "=" + URLEncoder.encode("20211011", "UTF-8")); 

			// �����϶��� �����ϰ� ����Ҽ��� �ִ�.
			urlBuilder.append("?" + "Key=" + Key); // ù ��°�� ����ǥ�� ����
			urlBuilder.append("&" + "Type=" + Type);
			urlBuilder.append("&" + "pIndex=" + pIndex);
			urlBuilder.append("&" + "pSize=" + pSize);
			System.out.println(urlBuilder);
//			// 1. URL�� �����ϴ� �ڵ� ��!

			try {
				// 2. URL�� http ��ü�� ���� ��û
				URL url = new URL(urlBuilder.toString());
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
				conn.setRequestMethod("GET");
				// conn.setRequestProperty("Content-type", "application/json");
				conn.setRequestProperty("Accept", "application/xml");

				int code = conn.getResponseCode();
				System.out.println("Response code: " + code);
				if (code < 200 || code >= 300) {
					System.out.println("�������� �߸��Ǿ����ϴ�.");
					return null;
				}

				// 3. �ؼ���
				DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
				DocumentBuilder db = dbf.newDocumentBuilder();
				Document doc = db.parse(conn.getInputStream());
				doc.getDocumentElement().normalize();

				System.out.println("Root Element : " + doc.getDocumentElement().getNodeName()); // XML�� �ֻ��� tag���� �����´�.
				System.out.println("=======================" + pageNo + "������ ����==============================");

				NodeList nList = doc.getElementsByTagName("row");
				// nList >> �������� ������ �̰� �갡 ������. break; while�� ����
				System.out.println("nList.getLength() : " + nList.getLength());
				if (nList.getLength() < 1) {
					break;
				}
				for (int j = 0; j < nList.getLength(); j++) {
					Node node = nList.item(j);
//				System.out.println("\nCurrent Element : " + node.getNodeName());

					if (node.getNodeType() == Node.ELEMENT_NODE) {
						Element eElement = (Element) node;

						String dic_title = eElement.getElementsByTagName("DIC_TITLE").item(0).getTextContent();
						String dic_content = eElement.getElementsByTagName("DIC_CONTENT").item(0).getTextContent();

						// ���� ���1
//					String lt_content = eElement.getElementsByTagName("DIC_CONTENT").getLength() == 0 ? ""
//							: eElement.getElementsByTagName("DIC_CONTENT").item(0).getTextContent();
//					System.out.printf("%s : %s", "DIC_CONTENT", lt_content);

						// ���� ���2
//					String lt_content = "";
//					if(eElement.getElementsByTagName("DIC_CONTENT").item(0)!=null) {
//						lt_content = eElement.getElementsByTagName("DIC_CONTENT").item(0).getTextContent();
//					}

//					---------------------------------------------

						System.out.println(
								"dic_title : " + eElement.getElementsByTagName("DIC_TITLE").item(0).getTextContent());
																														
						System.out.println("dic_content : "
								+ eElement.getElementsByTagName("DIC_CONTENT").item(0).getTextContent());
						
						System.out.println();
						System.out.println("-----------------------------------------------------------------");
						System.out.println();

						LandTerm land = new LandTerm(dic_title, dic_content);
					list.add(land);
					}
				}
				pIndex++;
				System.out.println("pageNo : " + pIndex);
			if(pIndex == 18) {
				break;
			}

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
		// <list_total_count>840</list_total_count>
		// �� 840��
	}
}
