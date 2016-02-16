package com.servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.ViewEquipmentOperation;
import com.model.EquipmentDetail;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.PageSize;
import java.awt.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

public class ReportGeneratorServlet extends HttpServlet {

	/**
	 * @author Extremity
	 */
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		List<EquipmentDetail> list = new ViewEquipmentOperation()
				.viewEquipment();
		try {
			Document document = new Document(PageSize.A4);
			PdfWriter.getInstance(document, response.getOutputStream());
			document.open();
			Paragraph paragraph1 = new Paragraph("FITNESS CENTER",
					FontFactory.getFont(FontFactory.TIMES_BOLD, 22,
							Element.ALIGN_CENTER, BaseColor.BLUE));
			paragraph1.setAlignment(Element.ALIGN_CENTER);
			Paragraph paragraph2 = new Paragraph(
					"1st Floor Krishna Tower, Hingane Home Colony,",
					FontFactory.getFont(FontFactory.TIMES_ITALIC, 12,
							Element.ALIGN_CENTER));
			Paragraph paragraph3 = new Paragraph(
					"Hadapsar,Pune-411052. Tel.:(020) 65005714/16",
					FontFactory.getFont(FontFactory.TIMES_ITALIC, 12,
							Element.ALIGN_CENTER));
			paragraph2.setAlignment(Element.ALIGN_CENTER);
			paragraph3.setAlignment(Element.ALIGN_CENTER);

			Paragraph paragraph4 = new Paragraph(
					"Equipment Purchase Bill Detail", FontFactory.getFont(
							FontFactory.TIMES_BOLDITALIC, 18,
							Font.CENTER_BASELINE, BaseColor.BLACK));
			paragraph4.setAlignment(Element.ALIGN_CENTER);

			document.add(paragraph1);
			document.add(paragraph2);
			document.add(paragraph3);
			document.add(paragraph4);

			Paragraph paragraph11 = new Paragraph(
					"---------------------------------------------------------------",
					FontFactory.getFont(FontFactory.TIMES_BOLDITALIC, 24,
							Font.CENTER_BASELINE));
			paragraph4.setAlignment(Element.ALIGN_CENTER);

			document.add(paragraph11);

			PdfPTable table1 = new PdfPTable(5);

			PdfPCell cell = new PdfPCell(new Paragraph("Equipment Name",
					FontFactory.getFont(FontFactory.TIMES_ROMAN, 13,
							Element.ALIGN_CENTER)));
			cell.setFixedHeight(40);
			cell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table1.addCell(cell);

			cell = new PdfPCell(new Paragraph("Company Name",
					FontFactory.getFont(FontFactory.TIMES_ROMAN, 13,
							Element.ALIGN_CENTER)));
			cell.setFixedHeight(40);
			cell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table1.addCell(cell);

			cell = new PdfPCell(new Paragraph("Total Quantity",
					FontFactory.getFont(FontFactory.TIMES_ROMAN, 13,
							Element.ALIGN_CENTER)));
			cell.setFixedHeight(40);
			cell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table1.addCell(cell);

			cell = new PdfPCell(new Paragraph("Price Per Quantity",
					FontFactory.getFont(FontFactory.TIMES_ROMAN, 13,
							Element.ALIGN_CENTER)));
			cell.setFixedHeight(40);
			cell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table1.addCell(cell);

			cell = new PdfPCell(new Paragraph("Total Price",
					FontFactory.getFont(FontFactory.TIMES_ROMAN, 13,
							Element.ALIGN_CENTER)));
			cell.setFixedHeight(40);
			cell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table1.addCell(cell);

			for (EquipmentDetail ed : list) {

				cell = new PdfPCell(new Paragraph("" + ed.getEquipName()));
				cell.setFixedHeight(40f);
				table1.addCell(cell);
				cell = new PdfPCell(new Paragraph("" + ed.getCompanyName()));
				cell.setFixedHeight(40f);
				table1.addCell(cell);

				cell = new PdfPCell(new Paragraph("" + ed.getTotalQuantity()));
				cell.setFixedHeight(40f);
				table1.addCell(cell);
				cell = new PdfPCell(
						new Paragraph("" + ed.getPricePerQuantity()));
				cell.setFixedHeight(40f);
				table1.addCell(cell);
				cell = new PdfPCell(new Paragraph("" + ed.getTotalPrice()));
				cell.setFixedHeight(40f);
				table1.addCell(cell);
			}
			document.add(table1);
			document.close();
		} catch (Exception e) {

		}

	}

}
