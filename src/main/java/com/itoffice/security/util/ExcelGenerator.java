package com.itoffice.security.util;

import com.itoffice.security.certificate.Certificate;
import com.itoffice.security.user.User;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.List;

@Component
public class ExcelGenerator {

    private final List<User> users;
    private final List<Certificate> certificates;
    private final XSSFWorkbook workbook;
    private XSSFSheet sheet;

    public ExcelGenerator(List<User> users, List<Certificate> certificates) {
        this.users = users;
        this.certificates = certificates;
        workbook = new XSSFWorkbook();
    }

    private void writeHeaderForUsers() {
        sheet = workbook.createSheet("Admin");
        Row row = sheet.createRow(0);
        CellStyle style = workbook.createCellStyle();
        XSSFFont font = workbook.createFont();
        font.setBold(true);
        font.setFontHeight(16);
        style.setFont(font);
        createCell(row, 0, "ID", style);
        createCell(row, 1, "Admin Ismi", style);
        createCell(row, 2, "Admin Login", style);
        createCell(row, 3, "Admin Parol", style);
        sheet.setColumnWidth(0, 2500);
        sheet.setColumnWidth(1, 4000);
        sheet.setColumnWidth(2, 4000);
        sheet.setColumnWidth(3, 4000);
        //Write
        {
            int rowCount = 1;
            CellStyle style1 = workbook.createCellStyle();
            XSSFFont font1 = workbook.createFont();
            font1.setFontHeight(14);
            style1.setFont(font1);
            for (User record : users) {
                Row row1 = sheet.createRow(rowCount++);
                int columnCount = 0;
                createCell(row1, columnCount++, record.getId(), style1);
                createCell(row1, columnCount++, record.getName(), style1);
                createCell(row1, columnCount++, record.getLogin(), style1);
                createCell(row1, columnCount++, record.getPassword(), style1);
            }
        }
    }

    private void writeHeaderForCertificates() {
        sheet = workbook.createSheet("Sertifikat");
        Row row = sheet.createRow(0);
        CellStyle style = workbook.createCellStyle();
        XSSFFont font = workbook.createFont();
        font.setBold(true);
        font.setFontHeight(16);
        style.setFont(font);
        createCell(row, 0, "ID", style);
        createCell(row, 1, "FIO", style);
        createCell(row, 2, "Jins", style);
        createCell(row, 3, "Sana", style);
        createCell(row, 4, "Kategoriya", style);
        createCell(row, 5, "Markaz Nomi", style);

        sheet.setColumnWidth(0, 2500);
        sheet.setColumnWidth(1, 4000);
        sheet.setColumnWidth(2, 4000);
        sheet.setColumnWidth(3, 4000);
        sheet.setColumnWidth(4, 4000);
        sheet.setColumnWidth(5, 4000);
        //Write
        {
            int rowCount = 1;
            CellStyle style1 = workbook.createCellStyle();
            XSSFFont font1 = workbook.createFont();
            font1.setFontHeight(14);
            style1.setFont(font1);
            for (Certificate record : certificates) {
                Row row1 = sheet.createRow(rowCount++);
                String place = "";
                switch (record.getPlace()) {
                    case 1:
                        place = "IT Park";
                        break;
                    case 2:
                        place = "IT Park Qorasuv";
                        break;
                    case 3:
                        place = "Davlat Xodimlari";
                        break;
                }
                int columnCount = 0;
                createCell(row1, columnCount++, "H00" + record.getId(), style1);
                createCell(row1, columnCount++, record.getStudentName(), style1);
                createCell(row1, columnCount++, record.isStudentMan() ? "Erkak" : "Ayol", style1);
                createCell(row1, columnCount++, record.getDate().toString(), style1);
                createCell(row1, columnCount++, record.getCategory().getName(), style1);
                createCell(row1, columnCount++, place, style1);
            }
        }
    }

    private void createCell(Row row, int columnCount, Object valueOfCell, CellStyle style) {
//        sheet.autoSizeColumn(columnCount);
        Cell cell = row.createCell(columnCount);
        if (valueOfCell instanceof Integer) {
            cell.setCellValue((Integer) valueOfCell);
        } else if (valueOfCell instanceof Long) {
            cell.setCellValue((Long) valueOfCell);
        } else if (valueOfCell instanceof String) {
            cell.setCellValue((String) valueOfCell);
        } else {
            cell.setCellValue((Boolean) valueOfCell);
        }
        cell.setCellStyle(style);
    }

    public void generateExcelFile(HttpServletResponse response) throws IOException {
        if (users == null) {
            writeHeaderForCertificates();
        } else {
            writeHeaderForUsers();
        }
        ServletOutputStream outputStream = response.getOutputStream();
        workbook.write(outputStream);
        workbook.close();
        outputStream.close();
    }
}